#!/usr/bin/env python
# -*- coding:utf8 -*-

import sys
import os

format = "proto"

def replacePath(path):
	binPath = path[:-len(format)] + "protobin"
	binCmd = "protoc --descriptor_set_out=%s --include_imports %s"%(binPath,path)
	os.system(binCmd)
	command = "protogen %s"%binPath
	os.system(command)
	print "proto file :  " + path

def listAllFile(dirPath):
	if not os.path.isdir(dirPath):
		return
	else:
		fileList = os.listdir(dirPath)
		print fileList
		for file in fileList:
			if '.' == file[0]:
				continue
			filePath = dirPath + '/' + file
			if os.path.isdir(filePath):
				listAllFile(filePath)
			else:
				if format == file[-len(format):]:
					replacePath(filePath)


if 2 != len(sys.argv):
	print "argv input error, you must put *.proto"
	sys.exit()

protoPath = sys.argv[1]
if 0 != cmp(format,protoPath[-len(format):]):
	print "argv input error, you must put *.proto"
	sys.exit()

if os.path.exists(protoPath):
	replacePath(protoPath)
else:
	print "path is not exist"
	sys.exit()