#coding=utf-8
"""
提取Android中敏感信息
"""
import os
import re
import csv

def reqPer(inpath,outpath,stuta):
    files = os.listdir(inpath)
    rows = ["filename","reqpermission", "intent", "hardfeature","result"]

    csvFile = open(outpath, "w")
    dict_writer = csv.DictWriter(csvFile, rows)
    dict_writer.writeheader()
    for i, file in enumerate(files):
        tup=''
        fullpath = os.path.join(inpath, file+"\\AndroidManifest.xml")
        with open(fullpath, 'r',encoding='UTF-8') as f:
            for l in f:
                tup = tup+''.join(l.rstrip('\n').rstrip().split('\t'))
        p='(?<=uses-permission android:name=").*?(?=")' #请求权限正则
        i='(?<=action android:name=").*?(?=")'   #Intent正则
        h='(?<=uses-feature=").*?(?=")'    #硬件特征正则
        pattern1 = re.compile(p)
        pattern2 = re.compile(i)
        pattern3 = re.compile(h)
        dict_writer.writerow({"filename":file,"reqpermission": pattern1.findall(tup), "intent": pattern2.findall(tup), "hardfeature": pattern3.findall(tup),"result":stuta})
    csvFile.close()




outpath="./data.csv"
# 恶意软件样本
malware_root = ".\\smali\\malware"
reqPer(malware_root, outpath, 0)

# 正常软件样本
benign_root = ".\\smali\\benign"
# reqPer(benign_root, "./smali/benign", 1)