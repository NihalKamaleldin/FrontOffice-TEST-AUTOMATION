*** Settings ***
Resource            ../Resources/PO/TopNav.robot
Resource            ../Resources/PO/TeamPage.robot
Resource            ../Resources/PO/LandingPage.robot


*** Variables ***
${TEAM_PAGE_LINK}           //*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a

*** Keywords ***

Verfiy Landing Page is Loaded
        LandingPage.Verify Landing Page is Loaded

Go to Team Page

        Click on "Team" Page Link
        TeamPage.Verify Main Headline of The TeamPage
        TeamPage.Verify TeamPage Is Highlighted

Click on "Team" Page Link
        TopNav.Click on a link on the Top Nav   ${TEAM_PAGE_LINK}

