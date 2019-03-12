import shutil
import os
import json
from pathlib import Path

#const
MOD_NAME = "MomoTweak"
MOD_DIRECTORY = "\\Mod"
INFO = "\\info.json"
IS_ZIP = True

#variable
FactorioModsPath = ""
GitPath = ""

def Init():
        path = os.path.realpath(__file__)
        global GitPath
        GitPath = os.path.dirname(path)
        global FactorioModsPath
        FactorioModsPath = str(Path(GitPath).parent)
        print("Init Factorio Mod Path = " + FactorioModsPath)
        print("GitPath = " + GitPath)

def ZipDirectory(version):
        directory = GitPath + MOD_DIRECTORY
        print("Start zipping Directory at :" + directory)
        if (IS_ZIP):
                shutil.make_archive(MOD_NAME + "_" + version, 'zip', directory)
                return MOD_NAME + "_" + version + ".zip"
        return ""
        
def GetVersion():
        json_data = open(GitPath + MOD_DIRECTORY + INFO).read()
        info = json.loads(json_data)
        version = info["version"]
        print ("Read " + INFO + " get version = " + version)
        return version

def MoveZipOut(zip_name):
        fileFrom = GitPath + '\\' + zip_name
        fileTo = FactorioModsPath + '\\' + zip_name
        print("Move " + zip_name)
        print("From : " + fileFrom)
        print("To   : " + fileTo)
        if os.path.isfile(fileTo) :
                os.remove(fileTo)
                print ("file Exist " + zip_name + " Removed")
        os.rename(fileFrom, fileTo)

Init()
zipName = ZipDirectory(GetVersion())
MoveZipOut(zipName)
print(input())

