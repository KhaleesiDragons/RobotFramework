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
    [Arguments]  @{URL_AND_BROWSER}
    open browser  @{URL_AND_BROWSER}[0]  @{URL_AND_BROWSER}[1]
    close browser