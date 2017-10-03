*** Settings ***
Resource  ../Resources/Variables.robot
Resource  ../Resources/PO/SignIn.robot

*** Keywords ***
Log in page
    SignIn.Verify login page
    SignIn.Fill email
    SignIn.Fill password
    SignIn.Submit button