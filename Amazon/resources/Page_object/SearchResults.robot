*** Settings ***
Library  Selenium2Library

*** Variables ***
${TYPE_ITEM_3} =  "2014 Ferrari Laferrari 24X36 Poster Banner Photo"

*** Keywords ***
Verify Search Completed
    sleep  5s
    wait until page contains  results for ${TYPE_ITEM_3}


Click Product Link
    [Documentation]  Click on first product in the search result
    #click element  css=#result_0 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a
    click element  //h2[@data-attribute=${TYPE_ITEM_3}]
