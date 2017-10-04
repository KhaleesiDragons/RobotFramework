*** Settings ***
Resource  ../Resources/PO/AddLocation.robot
Resource  ../Resources/PO/Menu.robot
*** Keywords ***
Find location page
    Menu.Click to Locations in menu
    AddLocation.Click to button "Add Location"

Fill all items in location form
    AddLocation.Verify location page
    AddLocation.Add location name
    AddLocation.Add location adress 1
    AddLocation.Add location city
    AddLocation.Add location zip
    AddLocation.Add location country
    AddLocation.Click to submit


