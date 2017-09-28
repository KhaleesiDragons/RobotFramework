*** Settings ***
Documentation  Testing web site www.seznam.cz
Library  Selenium2Library
Resource  ../Resources/PO/LoadingPage.robot
Resource  ../Resources/PO/SelectApartman.robot
Test Setup  start web test
Test Teardown  end web test

*** Variables ***

*** Test Cases ***
First step
    Select Apartman from list





