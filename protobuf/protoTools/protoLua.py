#!/usr/bin/env python
# -*- coding:utf8 -*-

import sys
import os

# print sys.executable
outPath = os.path.abspath('.')
# sys.exit()
format = "proto"
execut = "protoc --plugin=protoc-gen-lua=\"%s/protoc-gen-lua.bat\" --lua_out=./"%(sys.path[0])

def replacePath(path):
	command = "%s"%(execut)+" %s"%(path)
	# print command
	os.system(command)
	moveCmd = "move /y %s\%s\*.lua ./ > nul"%(outPath,os.path.dirname(path))
	# print moveCmd
	os.system(moveCmd)
	# print "proto file:" + path

def listAllFile(dirPath):
	if not os.path.isdir(dirPath):
		return
	else:
		fileList = os.listdir(dirPath)
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
