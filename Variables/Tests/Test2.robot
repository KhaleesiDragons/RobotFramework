*** Settings ***
Library  Selenium2Library
Library  BuiltIn
*** Variables ***

*** Test Cases ***
User can search for products
    @{URL_AND_BROWSER} =  set variable  https://www.google.com  chrome
    Begin web test  @{URL_AND_BROWSER}

*** Keywords ***
Begin web test
    [Arguments]  ${URL}  ${BROWSER}
    open browser  ${URL}  ${BROWSER}
    close browser