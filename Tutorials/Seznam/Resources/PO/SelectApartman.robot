*** Settings ***
Library  Selenium2Library

*** Keywords ***
Select Apartman from list
    wait until page contains  1+1
    select checkbox  1+1
    wait until page contains  Velmi dobrý
    select checkbox  Velmi dobrý
    click element at coordinates  267.334  189.861
