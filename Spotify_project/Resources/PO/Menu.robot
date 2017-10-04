*** Settings ***
Library  Selenium2Library
*** Keywords ***
Click to Your Music in menu
    wait until page contains element  xpath=//a[text()[contains(.,"Your Music")]]
    click element  xpath=//a[text()[contains(.,"Your Music")]]

Click to Locations in menu
    wait until page contains element  xpath=//a[text()[contains(.,"Locations")]]
    click element  xpath=//a[text()[contains(.,"Locations")]]

Click to Settings in menu
    wait until page contains element  xpath=//a[text()[contains(.,"Settings")]]
    click element  xpath=//a[text()[contains(.,"Settings")]]

Click to profile image
    wait until page contains element  xpath=//img[@class="gravatar"]
    click element  xpath=//img[@class="gravatar"]

