import shutil

def CopyDirectory() :
	print("Start copy Directory.")

print("Init Exporting.")
CopyDirectory()

print(input())

#!/usr/bin/env python
def zipdir(dir_name, output_filename):
    shutil.make_archive(output_filename, 'zip', dir_name)
