#coding=utf-8
"""
提取smali中信息
"""
import os
import re
import csv
import string

def reqSmali(inpath,outpath,stuta):
    files = os.listdir(inpath)
    rows = ["filename","method"]
    csvFile = open(outpath, "w")
    dict_writer = csv.DictWriter(csvFile, rows)
    dict_writer.writeheader()
    for i, file in enumerate(files):
        tup=''
        fullpath = os.path.join(inpath, file+"\\smali")
        list = list_all_files(fullpath)  # 列出文件夹下所有的目录与文件
        # print(list_all_files(fullpath)[0])
        m = '(?<=method public ).*?(?=\()'  # api方法正则
        for i in range(0, len(list)):
            path = list[i]
            with open(path, 'r', encoding='UTF-8') as f:
                for l in f:
                    tup = tup + ''.join(l.rstrip('\n').rstrip().split('\t'))
        pattern4 = re.compile(m)
        methodContext=pattern4.findall(tup)
        delmethod=["constructor <init>","onReceive","onCreate"]#去掉部分构造方法
        for i in range(len(delmethod)):
           while delmethod[i] in methodContext:
              methodContext.remove(delmethod[i])
        delstr=["static","final","abstract"]#去掉部分限定字符
        for i in range(len(methodContext)):
            for j in range(len(delstr)):
               methodContext[i]=str(methodContext[i]).replace(delstr[j],"").strip()
            # print(methodContext[i])
        dict_writer.writerow({"filename": file,"method":methodContext})
        # print(file+">>>>"+tup)
    csvFile.close()

def list_all_files(rootdir):
    import os
    _files = []
    list = os.listdir(rootdir) #列出文件夹下所有的目录与文件
    for i in range(0,len(list)):
           path = os.path.join(rootdir,list[i])
           if os.path.isdir(path):
              _files.extend(list_all_files(path))
           if os.path.isfile(path):
              _files.append(path)
    return _files


outpath="./data.csv"
# 恶意软件样本
malware_root = ".\\smali\\malware"
reqSmali(malware_root, outpath, 0)

# 正常软件样本
benign_root = ".\\smali\\benign"
# reqSmali(benign_root,outpath, 1)