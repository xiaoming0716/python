# -*- coding: utf-8 -*-
# import urllib2
import requests
import urllib
# from bs4 import BeautifulSoup
# import re
# import json
# import time
import sys
import urlparse
from tqdm import tqdm
reload(sys)
sys.setdefaultencoding("utf-8")
import os

CFG_NAME = "download_files.txt"

def trim(s):
    if s[:1] != ' ' and s[-1:] != ' ':
        return s
    elif s[:1] == ' ':
        return trim(s[1:])
    else:
        return trim(s[:-1])


def my_hook(t):
    last_b = [0]
    def inner(b=1, bsize=1, tsize=None):
        """
        b  : int, optional
            Number of blocks just transferred [default: 1].
        bsize  : int, optional
            Size of each block (in tqdm units) [default: 1].
        tsize  : int, optional
            Total size (in tqdm units). If [default: None] remains unchanged.
        """
        if tsize is not None:
            t.total = tsize
        t.update((b - last_b[0]) * bsize)
        last_b[0] = b
    return inner

        

def downloadFile(url):
    urlP=urlparse.urlparse(url)
    path=os.getcwd()
    urlPath = urlP.path
    fileName = os.path.basename(urlPath)
    if fileName == '':
        # print("空")
        fileName = "index.html"
    if urlPath[0] == '/':
        # print("去除/")
        urlPath = urlPath[1:]
    path=os.path.join(path,os.path.dirname(urlPath))
    if not os.path.exists(path):
        os.makedirs(path)
    dest_dir=os.path.join(path,fileName)
    print("start download:"+dest_dir)

    # urllib.urlretrieve(url,dest_dir,schedule)
    with tqdm(unit='B', unit_scale=True, leave=True, miniters=1,
              desc="info") as t:  # all optional kwargs
        urllib.urlretrieve(url, filename=dest_dir,
                           reporthook=my_hook(t), data=None)


def downloadFileUsingRequest(url):
    urlP=urlparse.urlparse(url)
    path=os.getcwd()
    urlPath = urlP.path
    fileName = os.path.basename(urlPath)
    if fileName == '':
        # print("空")
        fileName = "index.html"
    if urlPath[0] == '/':
        # print("去除/")
        urlPath = urlPath[1:]
    path=os.path.join(path,"飞鱼大冒险".encode('gb2312'))
    path=os.path.join(path,os.path.dirname(urlPath))
    if not os.path.exists(path):
        os.makedirs(path)
    dest_dir=os.path.join(path,fileName)
    print("start download:"+dest_dir)

    r = requests.get(url, stream=True)
    f = open(dest_dir, "wb")
    for chunk in r.iter_content(chunk_size=512):
        if chunk:
            f.write(chunk)
    f.close()



def main():
    os.chdir(os.getcwd())
    if os.path.exists(CFG_NAME) == False:
        print("download_files.txt is not exist!")
        return

    cfg_file = open(CFG_NAME,"r")
    lines = cfg_file.readlines()
    files = []
    for line in lines:
        line = line.strip('\n')
        files.append(line)

    for url in files:
        downloadFile(url)

    os.system("pause")



main()