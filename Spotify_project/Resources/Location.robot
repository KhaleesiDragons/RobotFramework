*** Settings ***
Resource  ../Resources/PO/AddLocation.robot
*** Keywords ***
Find location page
    AddLocation.Find location path


Fill all items in location form
    AddLocation.Verify location page
    AddLocation.Add location name
    AddLocation.Add location adress 1
    AddLocation.Add location city
    AddLocation.Add location zip
    AddLocation.Add location country
    AddLocation.Click to submit


