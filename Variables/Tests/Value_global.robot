*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Scope.robot
*** Variables ***

*** Test Cases ***
Test global value
    Begin web test
    Second web test

*** Keywords ***
Begin web test
    open browser  ${URL}  ${BROWSER}
    close browser

Second web test
    Log  ${MY_VARIABLES}