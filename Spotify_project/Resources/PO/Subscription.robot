*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Variables.robot

*** Keywords ***
Verify subscription button
    wait until page contains element  xpath=//button[@class="btn btn--primary"]  timeout=20s

Click to Activate subscription button
    click element  xpath=//button[@class="btn btn--primary"]

Verify activatation and payment page
    wait until page contains  Activation and payment
    wait until page contains  ${NAME}
    wait until page contains  ${ADRESS_1}
    wait until page contains  ${POSTAL_CODE}
    wait until page contains  ${CITY}
    wait until page contains  ${COUNTRY_CODE}
    wait until page contains element  xpath=//button[@class="btn btn--primary btn--block"]
    wait until page contains element  xpath=//button[@class="right btn btn--mini"]

Verify Email on activate page
    wait until page contains element  xpath=//button[@class="right btn btn--mini"]


Change Email on Activation page
    click element  xpath=//button[@class="right btn btn--mini"]
    clear element text  xpath=//input[@id="field-Input-email"]
    input text  id=field-Input-email  ${EMAIL}

Click to button Activate Now
    click button  xpath=//button[@class="btn btn--primary btn--block"]

