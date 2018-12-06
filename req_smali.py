#coding=utf-8
"""
提取smali中信息
"""
import os
import re
import csv

def reqSmali(inpath,outpath,stuta):
    files = os.listdir(inpath)
    # rows = ["filename","senApi","result"]
    # csvFile = open(outpath, "w")
    # dict_writer = csv.DictWriter(csvFile, rows)
    # dict_writer.writeheader()
    for i, file in enumerate(files):
        tup=''
        fullpath = os.path.join(inpath, file+"\\smali")
        filesdir=[]
        list = os.listdir(fullpath)  # 列出文件夹下所有的目录与文件
        for i in range(0, len(list)):
            path = os.path.join(fullpath, list[i])
            if os.path.isdir(path):
                filesdir.extend(list_all_files(path))
            if os.path.isfile(path):
                with open(path, 'r', encoding='UTF-8') as f:
                    for l in f:
                        tup = tup + ''.join(l.rstrip('\n').rstrip().split('\t'))
        print(">>>>"+tup)



    #     p='(?<=uses-permission android:name=").*?(?=")' #请求权限正则
    #     i='(?<=action android:name=").*?(?=")'   #Intent正则
    #     h='(?<=uses-feature=").*?(?=")'    #硬件特征正则
    #     pattern1 = re.compile(p)
    #     pattern2 = re.compile(i)
    #     pattern3 = re.compile(h)
    #     dict_writer.writerow({"reqpermission": pattern1.findall(tup), "intent": pattern2.findall(tup), "hardfeature": pattern3.findall(tup),"result":stuta})
    # csvFile.close()

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
# reqPer(malware_root, outpath, 0)

# 正常软件样本
benign_root = ".\\smali\\benign"
# reqPer(benign_root, "./smali/benign", 1)