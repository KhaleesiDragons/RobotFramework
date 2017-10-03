*** Settings ***
Library  Selenium2Library
Library  BuiltIn

*** Variables ***
@{MY_VARIABLES} =  Hello there  This is value 2  I am item 3

*** Test Cases ***
Variable demonstration 1
    Log  @{MY_VARIABLES}[0]
    Log  @{MY_VARIABLES}[1]
    Log  @{MY_VARIABLES}[2]

Variable demonstration 2
    @{my_list} =  set variable  Item 1  Item 2  Item 3  Item 4
    Log  @{my_list}[0]
    Log  @{my_list}[1]
    Log  @{my_list}[2]

Variable demonstration 3
    @{my_created_list} =  create list  Item 1  Item 2  Item 3
    Log  @{my_created_list}[0]
    Log  @{my_created_list}[1]
    Log  @{my_created_list}[2]
