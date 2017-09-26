*** Settings ***
Library  RequestsLibrary
Library  Selenium2Library


*** Variables ***

*** Keywords ***
Check GitHub Username
    #Create session
    Create Session  github  https://api.github.com

    ${json_file} =  Get

