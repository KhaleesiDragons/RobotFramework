*** Settings ***
Resource  ../Resources/OP/OS.robot
*** Test Cases ***
New derictories
    OS.Create the Base directory
    OS.create directory 1
    OS.create directory 2


Create some files
    OS.Create file 1
    OS.Create file 2


Move files to Base directory
    OS.Move to base directory
    OS.Remove old derictory