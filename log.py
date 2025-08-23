import os

factorio = os.path.dirname(os.path.join(os.path.pardir, os.path.pardir, os.path.curdir))
print(factorio)
logName = "factorio-current.log"
if os.path.isfile(factorio + "\\" + logName):
    logPath = factorio + "\\" + logName
    os.startfile(logPath)
else:
    print("No log file found at: " + factorio + "\\" + logName)