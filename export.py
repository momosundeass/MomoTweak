import shutil
import os

MOD_NAME = "MomoTweak"
MOD_DIRECTORY = "\Mod"
IS_ZIP = False

def zipdir(dir_name, output_filename):
        if (IS_ZIP):
                shutil.make_archive(output_filename, 'zip', dir_name)

def CopyDirectory(version):
        path = os.path.realpath(__file__)
        directory = os.path.dirname(path)
        print("Start zipping Directory at " + directory + MOD_DIRECTORY)
        zipdir(directory, MOD_NAME + "_" + version)
def GetVersion():
        version = "0"
        
        return version

print("Init Exporting.")
CopyDirectory(GetVersion())

print(input())

