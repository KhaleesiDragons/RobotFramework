*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    page should contain element  ap_email  Email