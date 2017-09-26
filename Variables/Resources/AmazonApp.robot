*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Page_Object/SignIn.robot

*** Keywords ***
Login
    [Arguments]  ${Username}  ${Password}
    SignIn.Login with valid credentials

Start web test
    [Arguments]  ${Url}  ${Browser}
    open browser  ${Url}  ${Browser}

End web test
    close browser