*** Settings ***
Documentation  These are some API tests
Resource  ../Resources/OP/GitHub.robot

*** Variables ***

*** Test Cases ***
Make a simple REST API call
    [Tags]  API
    Check GitHub Username

Display emoji from GitHub
    [Tags]  API
    Display Emoji
