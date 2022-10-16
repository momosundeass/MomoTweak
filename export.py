import shutil
import os
import json
import time
import subprocess
from pathlib import Path

# const
INFO = "\\info.json"
FACTORIO = "factorio.exe"

FactorioPath = ["C:\\Program Files (x86)\\Steam\\steamapps\\common\\Factorio\\bin\\x64\\factorio.exe",
                "G:\\SteamLibrary\\steamapps\\common\\Factorio\\bin\\x64\\factorio.exe", 
                "C:\\Program Files (x86)\\Steam\\factorio.exe"]
        
# variable
FactorioModsPath = ""
GitPath = ""
LibPath = ""
LibName = ""

# class
class MOD:
  Name = ""
  Directory = ""
  LibPath = ""
  def __init__(self, name, directory, libPath=""):
    self.Name = name
    self.Directory = directory
    self.LibPath = libPath
# end of class
    
def Init():
  path = os.path.realpath(__file__)
  global GitPath
  GitPath = os.path.dirname(path)
  global FactorioModsPath
  FactorioModsPath = str(Path(GitPath).parent)
  print("Init")
  print("Factorio Mod Path : " + FactorioModsPath)
  print("GitPath : " + GitPath)
  print("--------------------------------")

def InitLib(libPath, libName):
  print("Init Lib at : " + libPath)
  print("--------------------------------")
  global LibPath
  LibPath = libPath
  global LibName
  LibName = libName
  return 
  
# Will return mod directory name
def ExportModDirectory(mod):
  directory = GitPath + mod.Directory
  print("Start export mod : " + mod.Name)
  print("Directory : " + directory)
  version = GetVersion(mod)
  
  target_dir = FactorioModsPath + "\\" + mod.Name + "_" + version
  if os.path.isdir(target_dir) :
    shutil.rmtree(target_dir)
  shutil.copytree(directory, target_dir)
  
  CopyLib(mod, target_dir)
  print("\n")
  return mod.Name + "_" + version

        
def GetVersion(mod):
  json_data = open(GitPath + mod.Directory + INFO).read()
  info = json.loads(json_data)
  version = info["version"]
  print ("Read " + INFO + " get version = " + version)
  return version

def CopyLib(mod, target_dir):
  if mod.LibPath == "":
    return
  libDirectory = GitPath + mod.LibPath
  print("Lib path : " + libDirectory)
  if (os.path.isdir(libDirectory)):
    global LibName
    shutil.copytree(libDirectory, target_dir + "\\" + LibName)
    print("Copy lib completed.")
  return

def FindFactorioInSystem():
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
InitLib("\\MomoIRTweak\\function", "function")

momoTweak = MOD("MomoTweak", "\\Mod", libPath=LibPath)
momoTweakDirectoryName = ExportModDirectory(momoTweak)

easyEvo = MOD("MomoEasyEvolution", "\\MomoEasyEvolution")
momoEasyEvoDirectoryName = ExportModDirectory(easyEvo)

momoABTweak = MOD("MomoABTweak", "\\MomoABTweak", libPath=LibPath)
momoTweakDirectoryName = ExportModDirectory(momoABTweak)

pyTweak = MOD("MomoPyTweak", "\\MomoPyTweak", libPath=LibPath)
momoPyTweakDirectoryName = ExportModDirectory(pyTweak)

irTweak = MOD("MomoIRTweak", "\\MomoIRTweak")
momoIRTweakDirectoryName = ExportModDirectory(irTweak)

pipeTweak = MOD("MomoUndergroundPipeTweak", "\\MomoUndergroundPipeTweak", libPath=LibPath)
momoPipeTweakDirectoryName = ExportModDirectory(pipeTweak)

SETweak = MOD("MomoK2SETweak", "\\MomoK2SETweak", libPath=LibPath)
momoK2SETweakDirectoryName = ExportModDirectory(SETweak)

print("\nExport completed.")
time.sleep(.500)
if not (FindFactorioInSystem()):
  RunFactorio()
  print("")
else:
  print("\nFactorio already running please close") 
    
time.sleep(5.000)

