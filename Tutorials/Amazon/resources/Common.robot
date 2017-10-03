*** Settings ***
Documentation  Begin and End Web Test
Library  Selenium2Library

Resource  ../tests/Amazon.robot

*** Keywords ***
Begin Web Test
    open browser  ${START_URL}  ${BROWSER}

End Web Test
    close browser

Insert Testing data
    log  I am setting up the test data ....
Cleanup Testing Data
    log  I am setting up the test data ....