*** Settings ***
Library  Selenium2Library

*** Variables ***
${TYPE_ITEM_1} =  Your Amazon.com

*** Keywords ***
Load
    [Documentation]  Verify loading page
    wait until page contains  ${TYPE_ITEM_1}