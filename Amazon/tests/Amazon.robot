*** Settings ***
Documentation  This is some basic info about the whole suit
Resource  ../resources/Common.robot
Resource  ../resources/Amazon.robot

Suite Setup  Insert Testing data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data

*** Variables ***
${START_URL} =  https://www.amazon.com
${BROWSER} =  chrome

*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    Amazon.Search for products


Logged out user can view a product
    [Tags]  Smoke
    Amazon.Search for products
    Amazon.Select Product from Search Results

Logged out user can add product to card
    [Tags]  Smoke
    Amazon.Search for products
    Amazon.Select Product from Search Results
    Amazon.Add product to Card

Logged out user must sign in to check out
    [Tags]  Smoke
    Amazon.Search for products
    Amazon.Select Product from Search Results
    Amazon.Add product to Card
    Amazon.Begin Checkout