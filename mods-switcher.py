import shutil
import os
import time

MODSPATH = "..\\" 
MODPACKS = ["AB", "IR", "PY"]

def CopyToPack(folderPath):
    try:
        global MODSPATH
        for r, d, fs in os.walk(folderPath):
            for file in fs:
                shutil.copy(folderPath + "\\" + str(file), MODSPATH)
                print("Copy file " + str(file))
        return True
    
    except Exception as e:
        print(e)
        return False

def IntTryParse(value):
    try:
        return int(value), True
    except ValueError:
        return 0, False
        
def Start():
    global MODPACKS
    print("Select pack")
    i = 1
    for pack in MODPACKS:
        print("[" + str(i) + "] " + pack)
        i += 1

    selected, valid = IntTryParse(input())
    if (valid and (selected > 0 and selected <= len(MODPACKS))):
        print("Select " + str(selected) + " " + MODPACKS[selected - 1])
        if (CopyToPack(MODPACKS[selected - 1] + "-Enabled")):
            print("Copy completed.")
        else:
            print("Copy fail.")    
        return
    
    else:
        print("Unknown mod pack.")
        return

    

Start()
time.sleep(5.000)
