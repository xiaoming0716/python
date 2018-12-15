# -*- coding:utf-8 -*-
"""
    This utility is used to parse plist file which is packed by Texture Packer to original images.
    usage:
        -plist specify the path of plist file(required parameter).
        -png specify the path of png file(required parameter).
        -dir specify a output directory(optional). By default, it will make a new directory named
             with plist filename in current directory to save images.
"""
 
from xml.etree import ElementTree
from PIL import Image
import argparse
import os
import sys
import chardet
 
def get_all_file(path, allfile):
    filelist =  os.listdir(path)  
    for filename in filelist:  
        filepath = os.path.join(path, filename)  
        if os.path.isdir(filepath):  
            get_all_file(filepath, allfile)  
        else:
            allfile.append(filepath)  
    return allfile
 
 
class PlistParser(object):
 
    # initializer
    def __init__(self, plist, png_image, output_dir):
        self.plist_file = plist
        self.png_file = png_image
        self.atlas_dir = output_dir
 
    # convert a xml tree to dict.
    def convert_tree_to_dict(self, tree):
        d = {}
        for index, item in enumerate(tree):
            if item.tag == 'key':
                if tree[index + 1].tag == 'string':
                    d[item.text] = tree[index + 1].text
                elif tree[index + 1].tag == 'true':
                    d[item.text] = True
                elif tree[index + 1].tag == 'false':
                    d[item.text] = False
                elif tree[index + 1].tag == 'dict':
                    d[item.text] = self.convert_tree_to_dict(tree[index + 1])
        return d
 
    # split png file into individual images.
    def split_png_from_plist(self):
        # generate output directory     
        target_file_dir = self.atlas_dir
        if target_file_dir is None:
            target_file_dir = plist_filename.replace('.plist', '')
            if not os.path.isdir(target_file_dir):
                os.mkdir(target_file_dir)

        # open the source image.
        src_image = Image.open(png_filename)
        plist_content = open(plist_filename, 'r').read()
        plist_root = ElementTree.fromstring(plist_content)
        plist_dict = self.convert_tree_to_dict(plist_root[0])
        to_list = lambda x : x.replace('{', '').replace('}', '').split(',')
        for k, v in plist_dict['frames'].items():
            pos_str = str(v['textureRect'])
            rect_list = to_list(pos_str)
            width = int( rect_list[3] if v['textureRotated'] else rect_list[2] )
            height = int(rect_list[2] if v['textureRotated'] else rect_list[3] )
            bounding_box = (
                int(rect_list[0]),
                int(rect_list[1]),
                int(rect_list[0]) + width,
                int(rect_list[1]) + height,
            )
            size_list = [ int(x) for x in to_list(v['spriteSize']) ]
 
            rect_image = src_image.crop(bounding_box)
            if v['textureRotated']:
                rect_image = rect_image.rotate(90,expand = True)
 
            fileName = os.path.basename(k)
            # print(os.path.dirname(k))
            print(target_file_dir.decode('GBK').encode('utf-8'))
            path=os.path.join(target_file_dir.decode('GBK'),os.path.dirname(k))
            if not os.path.exists(path):
                os.makedirs(path)
            outfile = os.path.join(path, fileName)
            print(outfile)
            rect_image.save(outfile)

    
if __name__ == '__main__':
    # register all available parameters.
    parser = argparse.ArgumentParser(usage='please use unpacker.py -h to get usage information.')
    parser.add_argument('-plist', help='Specify the path of plist file.', type=str)
    parser.add_argument('-png', help='Specify the path of png file.', type=str)
    parser.add_argument('-dir', help='Specify a output directory.', type=str)
    parser.add_argument('-folder', help='Specify a output directory.', type=str)
    # get parameters.
    args = parser.parse_args()
    output_dir = args.dir
    folder = args.folder
 
    # test whether the file/dir is None
    # if plist_filename is None:
    #     print 'make sure to use -plist to specify the plist file path.'
    #     sys.exit(1)
    # if png_filename is None:
    #     print 'make sure to use -png to specify the source png image.'
    #     sys.exit(1)
 
    # test whether the file/dir exits
    if folder is None:
        plist_filename = args.plist+".plist"
        png_filename = args.png+".png"
        if not os.path.exists(png_filename):
            png_filename = args.png+".jpg"
        if not os.path.exists(plist_filename):
            print 'error: plist file doesn\'t exist.'
            sys.exit(1)
        if not os.path.exists(png_filename):
            print 'error: png or jpg file doesn\'t exist.'
            sys.exit(1)
        if output_dir is not None and not os.path.isdir(output_dir):
            print 'error: %s is no an valid directory or doesn\'t exist.' % output_dir
            sys.exit(1)
        plist_parser = PlistParser(plist_filename, png_filename, output_dir)
        plist_parser.split_png_from_plist()
        print 'success.'
    else:
        if os.path.isdir(folder):
            print('getdir..')
            allFile=[]
            allFile=get_all_file(folder,allFile)
            for f in allFile:
                if f.endswith(".plist"):
                    # print("unpack:%s"%f)
                    f = f[:-6]
                    print("unpack:%s"%f)
                    plist_filename = '%s.plist' %f
                    png_filename = '%s.png' %f
                    if not os.path.exists(png_filename):
                        png_filename = '%s.jpg' %f
                    if os.path.exists(png_filename):
                        plist_parser = PlistParser(plist_filename, png_filename, output_dir)
                        plist_parser.split_png_from_plist()

    
