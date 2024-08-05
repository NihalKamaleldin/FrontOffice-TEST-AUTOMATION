*** Settings ***
Documentation
Resource            ../Resources/FrontOfficeApp.robot
Resource            ../Resources/Common.robot
Test Setup          Begin Test         ${URL}        ${BROWSER}
Test Teardown       End Test


# To run script use this command
# robot -d results tests/FrontOffice.robot

*** Variables ***
${BROWSER}      chrome
${URL}          https://automationplayground.com/front-office

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]
    [Tags]          Smoke       Regression      Web Test
    FrontOfficeApp.Verfiy Landing Page is Loaded
    FrontOfficeApp.Go to Team Page



