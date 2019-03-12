import shutil
import os
import json
import time
import subprocess
from pathlib import Path

#const
MOD_NAME = "MomoTweak"
MOD_DIRECTORY = "\\Mod"
INFO = "\\info.json"
IS_ZIP = True
FactorioPath = ["C:\\Program Files (x86)\\Steam\\steamapps\\common\\Factorio\\bin\\x64\\factorio.exe",
                "C:\Program Files (x86)\Steam\factorio.exe"]
        

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

def RunFactorio():
        for factorio in FactorioPath :
                if os.path.isfile(factorio) :
                        subprocess.call(factorio)
                        print("Run Factorio")
                        return 0
Init()
zipName = ZipDirectory(GetVersion())
MoveZipOut(zipName)
print("Export Completed")
time.sleep(.500)
RunFactorio()

print(input())

