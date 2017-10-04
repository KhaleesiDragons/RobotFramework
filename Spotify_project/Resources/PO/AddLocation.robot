*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Variables.robot
*** Variables ***

*** Keywords ***
Click to button "Add Location"
    wait until page contains element  xpath=//a[@id="locations__create-button"]
    click element  xpath=//a[@id="locations__create-button"]

Verify location page
    wait until page contains  Where do you want to play music?
    wait until page contains element  xpath=//input[@id="field-Input-name"]
    wait until page contains element  xpath=//input[@id="field-Input-address"]
    wait until page contains element  xpath=//input[@id="field-Input-postal_code"]
    wait until page contains element  xpath=//input[@id="field-Input-city"]
    wait until page contains element  xpath=//select[@id="field-Select-iso_country"]
    wait until page contains element  xpath=//button[@type="submit"]

Add location name
    input text  xpath=//input[@id="field-Input-name"]  ${NAME}

Add location adress 1
    input text  xpath=//input[@id="field-Input-address"]  ${ADRESS_1}

Add location zip
    input text  xpath=//input[@id="field-Input-postal_code"]  ${POSTAL_CODE}

Add location city
    input text  xpath=//input[@id="field-Input-city"]  ${CITY}

Add location country
    select from list by label  xpath=//select[@id="field-Select-iso_country"]  ${COUNTRY}

Click to submit
    click button  xpath=//button[@type="submit"]