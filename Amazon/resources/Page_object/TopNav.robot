*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library

*** Variables ***
${TYPE_ITEM_2} =  2014 Ferrari Laferrari 24X36 Poster Banner Photo

*** Keywords ***
Search for products
    Enter Search Term
    Submit search

Enter Search Term
    input text  id=twotabsearchtextbox  ${TYPE_ITEM_2}

Submit search
    click button  css=#nav-search > form > div.nav-right > div > input
    #click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input