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
    [Arguments]  @{url_and_browser}
    open browser  @{url_and_browser}[0]  @{url_and_browser}[1]
    close browser