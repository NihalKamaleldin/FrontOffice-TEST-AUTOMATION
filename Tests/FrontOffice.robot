*** Settings ***
Documentation       This suite tests the navigation bar functionality and various page elements of the Front Office application.
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
    [Documentation]  This test verifies that the "Team" page is accessible from the landing page.
    [Tags]          Smoke       Regression      Web Test
    FrontOfficeApp.Verfiy Landing Page is Loaded
    FrontOfficeApp.Go to Team Page



