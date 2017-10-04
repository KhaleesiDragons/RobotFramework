*** Settings ***
Resource  ../Resources/PO/Subscription.robot
*** Keywords ***
Activate subscription
    Subscription.Verify subscription button
    Subscription.Click to Activate subscription button
    Subscription.Verify activatation and payment page
    Subscription.Verify Email on activate page
    Subscription.Change Email on Activation page
    Subscription.Click to button Activate Now