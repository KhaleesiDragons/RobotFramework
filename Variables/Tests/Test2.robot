*** Settings ***
Library  Selenium2Library
Library  BuiltIn
*** Variables ***

*** Test Cases ***
User can search for products
    @{url_and_browser} =  set variable  https://www.google.com  chrome
    Begin web test  @{url_and_browser}

*** Keywords ***
Begin web test
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}
    close browser