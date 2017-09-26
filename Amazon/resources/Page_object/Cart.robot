*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    wait until page contains  Cart subtotal (1 item):

Proceed to Checkout
    click link  Proceed to checkout (1 item)