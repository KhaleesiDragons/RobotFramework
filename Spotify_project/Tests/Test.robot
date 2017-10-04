*** Settings ***
Documentation  Soundrack automation test
Library  Selenium2Library
Library  BuiltIn
Resource  ../Resources/Variables.robot
Resource  ../Resources/PO/Start_end.robot
Resource  ../Resources/PO/Menu.robot

Resource  ../Resources/LogInForm.robot
Resource  ../Resources/Location.robot
Resource  ../Resources/ActivateSubscription.robot

Suite Setup  Begin web test  ${URL}  ${BROWSER}
#Suite Teardown  stop web test

*** Variables ***

*** Test Cases ***
Sign in to system
    LogInForm.Log in page

Create location
    Location.Find location page
    Location.Fill all items in location form

Subscription
    ActivateSubscription.Activate subscription









