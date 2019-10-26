import shutil
import os
import json
import time
import subprocess
from pathlib import Path

# const
INFO = "\\info.json"
FACTORIO = "factorio.exe"

# factorio don't load this zip file.
IS_ZIP = False
FactorioPath = ["C:\\Program Files (x86)\\Steam\\steamapps\\common\\Factorio\\bin\\x64\\factorio.exe",
                "G:\\SteamLibrary\\steamapps\\common\\Factorio\\bin\\x64\\factorio.exe", 
                "C:\\Program Files (x86)\\Steam\\factorio.exe"]
        
# variable
FactorioModsPath = ""
GitPath = ""

# class
class MOD:
  Name = ""
  Directory = ""
  def __init__(self, name, directory):
    self.Name = name
    self.Directory = directory
# end of class
    
def Init():
  path = os.path.realpath(__file__)
  global GitPath
  GitPath = os.path.dirname(path)
  global FactorioModsPath
  FactorioModsPath = str(Path(GitPath).parent)
  print("Init")
  print("Factorio Mod Path = " + FactorioModsPath)
  print("GitPath = " + GitPath)

# Will return mod directory name
def ExportModDirectory(version, mod):
  directory = GitPath + mod.Directory
  print("\nStart export Mod : " + mod.Name)
  print("Directory :" + directory)
  if (IS_ZIP):
    shutil.make_archive(mod.Name + "_" + version, 'zip', directory)
    return modName + "_" + version + ".zip"
  else:
    target_dir = FactorioModsPath + "\\" + mod.Name + "_" + version
    if os.path.isdir(target_dir) :
      shutil.rmtree(target_dir)
    shutil.copytree(directory, target_dir)
    return mod.Name + "_" + version
  return ""
        
def GetVersion(mod):
  json_data = open(GitPath + mod.Directory + INFO).read()
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

def FindFactorio():
  task = os.popen('tasklist /nh /fi "IMAGENAME eq "' + FACTORIO).read()
  return FACTORIO in task

def RunFactorio():
  for factorio in FactorioPath :
    if os.path.isfile(factorio) :
      os.startfile(factorio)
      print("Run Factorio")
      return
  print("No Factorio in path.")

# ==============================================================================

# == Program ===================================================================

Init()

momoTweak = MOD("MomoTweak", "\\Mod")
momoTweakDirectoryName = ExportModDirectory(GetVersion(momoTweak), momoTweak)

easyEvo = MOD("MomoEasyEvolution", "\\MomoEasyEvolution")
momoEasyEvoDirectoryName = ExportModDirectory(GetVersion(easyEvo), easyEvo)

irTweak = MOD("MomoIRTweak", "\\MomoIRTweak")
momoIRTweakDirectoryName = ExportModDirectory(GetVersion(irTweak), irTweak)

print("\nExport Completed")
time.sleep(.500)
if not (FindFactorio()):
  RunFactorio()
else:
  print("\nFactorio already running please close") 
    
time.sleep(5.000)

