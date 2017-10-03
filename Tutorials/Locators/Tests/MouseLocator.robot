*** Settings ***
Library  Selenium2Library

*** Variables ***
${URL} =  https://www.amazon.com
${BROWSER} =  chrome

*** Test Cases ***
Should be able to do something
    open browser  ${URL}  ${BROWSER}
    wait until page contains  Low-price fashion with free shipping
    #wait until keyword succeeds  5  10s  open browser  ${URL}  ${BROWSER}
    mouse over  id=nav-tools
    mouse out  id=nav-tools
    click element  xpath=//*[@id="gw-desktop-herotator"]/div/div/div/div[3]/a/i
    close browser



