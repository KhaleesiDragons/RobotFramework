*** Settings ***
Resource  ../Resources/scope.robot
Library  Selenium2Library

*** Variables ***

*** Test Cases ***
User can search for products
    begin web test  https://www.amazon.com  chrome

*** Keywords ***
Begin web test
    [Arguments]  ${url}  ${browser}
    open browser  ${url}  ${browser}
    close browser