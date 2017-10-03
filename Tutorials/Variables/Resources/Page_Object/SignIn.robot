*** Settings ***

*** Keywords ***
Login with valid credentials
    [Arguments]  ${Username}  ${Password}
    Fill username  ${Username}
    Fill password  ${Password}

Fill username
    [Arguments]  ${Username}
    Log  Filling email field with ${Username}

Fill password
    [Arguments]  ${Password}
    Log  Filling password field with ${Password}
