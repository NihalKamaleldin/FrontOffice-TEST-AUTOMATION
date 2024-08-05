*** Settings ***
Documentation   This file contains common keywords used across the project.
Library         SeleniumLibrary


*** Keywords ***
Begin Test
    [Documentation]    Open the browser and navigate to the start URL.
    [Arguments]         ${url}      ${browser}
    set selenium speed      0.0000001s
    set selenium timeout    5s
    open browser            ${url}      ${browser}
    maximize browser window

End Test
     [Documentation]    Close the browser.
     close browser