*** Settings ***
Library  RequestsLibrary
Library  Selenium2Library


*** Variables ***

*** Keywords ***
Check GitHub Username
    #Create session
    Create Session  my_github_session  https://api.github.com
    #make the call
    ${response} =  get request  my_github_session  users/robotframeworktutorial

    #response status
    should be equal as strings  ${response.status_code}  200

    #check the response body
    ${json} =  set variable  ${response.json()}
    should be equal as strings  ${json['login']}  robotframeworktutorial
    log  ${json}


Display Emoji
     #Create session
    Create Session  my_github_session  https://api.github.com
    #make the call
    ${response} =  get request  my_github_session  emojis

    #response status
    should be equal as strings  ${response.status_code}  200

    #check the response body
    ${json} =  set variable  ${response.json()}
    ${emoji_url} =  set variable  ${json['aerial_tramway']}
    open browser  ${emoji_url}  chrome
    [Return]  Found it!!!!!!!
    close browser