*** Settings ***
Documentation       This file contains keywords related to the Front Office application.
Resource            ../Resources/PO/TopNav.robot
Resource            ../Resources/PO/TeamPage.robot
Resource            ../Resources/PO/LandingPage.robot


*** Variables ***
${TEAM_PAGE_LINK}           //*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***

Verfiy Landing Page is Loaded
        [Documentation]    Verify that the landing page is loaded by checking the intro heading.
        LandingPage.Verify Landing Page is Loaded

Go to Team Page
        [Documentation]    Navigate to the Team Page and verify it is loaded and highlighted in the menu.
        Click on "Team" Page Link
        TeamPage.Verify Main Headline of The TeamPage
        TeamPage.Verify TeamPage Is Highlighted

Click on "Team" Page Link
        [Documentation]    Click on the Team Page link in the top navigation.
        TopNav.Click on a link on the Top Nav   ${TEAM_PAGE_LINK}

