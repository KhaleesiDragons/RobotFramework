*** Settings ***
Library  Selenium2Library
Library  Dialogs

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.amazon.com
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
Logged out
    [Tags]  Web
    ${new_browser} =  get selection from user  Which browser?  chrome  ie  firefox
    set global variable  ${BROWSER}  ${new_browser}
    open browser  ${URL}  ${BROWSER}
    pause execution

    ${text_from_user} =  get value from user  Type 'value' and press OK.
    input text  id=twotabsearchtextbox  ${text_from_user}
    click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    close browser