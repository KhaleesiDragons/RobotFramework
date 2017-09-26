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
    @{MY_LIST_VARIABLE} =  set variable  Item 1  Item 2  Item 3  Item 4
    Log  @{MY_LIST_VARIABLE}[0]
    Log  @{MY_LIST_VARIABLE}[1]
    Log  @{MY_LIST_VARIABLE}[2]

Variable demonstration 3
    @{MY_LIST_VARIABLES_CREATED} =  create list  Item 1  Item 2  Item 3
    Log  @{MY_LIST_VARIABLES_CREATED}[0]
    Log  @{MY_LIST_VARIABLES_CREATED}[1]
    Log  @{MY_LIST_VARIABLES_CREATED}[2]
