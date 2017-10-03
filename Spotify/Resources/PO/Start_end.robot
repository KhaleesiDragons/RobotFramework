*** Settings ***
Library  Selenium2Library


*** Keywords ***
Begin web test
    [Arguments]  ${Url}  ${Browser}
    open browser  ${Url}  ${Browser}


Stop web test
    close browser