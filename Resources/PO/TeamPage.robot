*** Settings ***
Documentation
Library              SeleniumLibrary
Resource           ./TopNav.robot
*** Variables ***
${HEADLINE_LOCATOR}         //*[@id="team"]/div/div[1]/div/h2
${TEAM_LINK_LOCATOR}       xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]
${ACTIVE_ITEM_SELECTOR}     css:#bs-example-navbar-collapse-1 > ul > li.active

*** Keywords ***
Verify Main Headline of The TeamPage
    ${HEADLINE} =   Get Text    ${HEADLINE_LOCATOR}
    Should Be Equal As Strings  ${HEADLINE}  Our Amazing Team  ignore_case=True
    #Wait Until Page Contains    ${HEADLINE}

Verify TeamPage Is Highlighted
    Verify TeamPage Is Highlighted in the Menu List     ${TEAM_LINK_LOCATOR}   ${ACTIVE_ITEM_SELECTOR}

Verify TeamPage Is Highlighted in the Menu List
    [Arguments]      ${team_link_locator}   ${active_item_selector}
    TopNav.Verify Top Nav Active List       ${team_link_locator}       ${active_item_selector}

