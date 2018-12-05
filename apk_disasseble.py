#coding=utf-8
"""
解压apk文件
"""
import os
import subprocess

def disasseble(inpath,outpath,num,start=0):
    files=os.listdir(inpath)
    files=files[start:num]

    total=len(files)

    for i,file in enumerate(files):
        fullInpath=os.path.join(inpath, file)
        fullOutpath = os.path.join(outpath, file)
        # os.rename(os.path.join(fullInpath, file), os.path.join(fullInpath, file[0:20]) + ".apk")
        command = "apktool d " + fullInpath + " -o " + fullOutpath
        subprocess.call(command, shell=True)
        print("已反汇编", i, "个应用，百分比如下：")
        print((i + 1) * 100 / total, "%")


# 反汇编恶意软件样本
virus_root = "./virus/malware"
disasseble(virus_root, "./smali/malware", 10)

# 反汇编正常软件样本
# kind_root = "./virus/benign"
# disasseble(kind_root, "./smali/benign", 600)
