*** Settings ***
Documentation  amazon test
Library  Selenium2Library
Library  BuiltIn

*** Variables ***
${TYPE_ITEM_1} =  2014 Ferrari Laferrari 24X36 Poster Banner Photo

*** Test Cases ***
Open browser
    [Documentation]  Test Open browser
    [Tags]  Smoke
    open browser  https://www.amazon.com/  chrome
    wait until page contains  Your Amazon.com
    input text  id=twotabsearchtextbox  ${TYPE_ITEM_1}
    #click button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    click button  css=#nav-search > form > div.nav-right > div > input
    wait until page contains  results for "${TYPE_ITEM_1}"
    click element  css=#result_0 > div > div > div > div.a-fixed-left-grid-col.a-col-right > div.a-row.a-spacing-small > div:nth-child(1) > a
    #click element  //h2[@data-attribute="${TYPE_ITEM_1}"]
    wait until page contains  Back to search results
    click button  id=add-to-cart-button
    wait until page contains  Cart subtotal (1 item):
    click link  Proceed to checkout (1 item)
    page should contain element  ap_email  Email

    go to  https://www.amazon.com
    click image  Deals on your favorite brands
    close browser