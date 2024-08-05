*** Settings ***
Documentation
Library         SeleniumLibrary


*** Keywords ***

Begin Test
    [Arguments]         ${url}      ${browser}
    set selenium speed      0.0000001s
    set selenium timeout    10s
    open browser            ${url}      ${browser}
    maximize browser window


End Test
    close browser