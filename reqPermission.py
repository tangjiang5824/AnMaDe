#coding=utf-8
"""
提取所有的请求权限
"""
import os
import string

def reqPer(inpath,outpath,stuta,start=0):
    files = os.listdir(inpath)
    for i, file in enumerate(files):
        fullpath = os.path.join(inpath, file+"\\AndroidManifest.xml")
        with open(fullpath, 'r',encoding='UTF-8') as f:
            for l in f:
                tup = ''.join(l.rstrip('\n').rstrip().split('\t'))
                p='<uses-permission' #请求权限
                #i='<intent-filter'   #Intent
                h='<uses-feature'    #硬件特征
                if (p in tup or h in tup):
                    print(file + " :" + tup)



outpath="./data.csv"
# 恶意软件样本
malware_root = ".\\smali\\malware"
reqPer(malware_root, outpath, 0)

# 正常软件样本
# benign_root = "./virus/benign"
# disasseble(benign_root, "./smali/benign", 1)