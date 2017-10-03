*** Settings ***
Library  Selenium2Library
*** Variables ***
${URL} =  https://www.sreality.cz/hledani/byty
${BROWSER} =  chrome
*** Keywords ***
start web test
    open browser  ${URL}  ${BROWSER}
    maximize browser window

end web test
    close browser

