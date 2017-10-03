*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Variables.robot

*** Keywords ***
Verify login page
    wait until page contains element  xpath=//input[@type="email"]
    wait until page contains element  xpath=//input[@type="password"]
    wait until page contains element  xpath=//button[@class="col c-centered s-8 btn btn--primary btn--block"]


Fill email
    input text  xpath=//input[@id="field-Input-username"]  ${EMAIL}

Fill password
    input password  xpath=//input[@id="field-Password-password"]  ${PASSWORD}

Submit button
    click button  xpath=//button[@class="col c-centered s-8 btn btn--primary btn--block"]