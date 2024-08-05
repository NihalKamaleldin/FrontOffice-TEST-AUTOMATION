*** Settings ***
Documentation
Library         SeleniumLibrary


*** Variables ***



*** Keywords ***

Verify Top Nav Active List
    [Arguments]     ${active_list_locator}    ${enabled_list_locator}
    ${is_active}=   Check if the section in menu is active    ${active_list_locator}
    ${is_enabled}=  Check if the section in menu is enabled   ${enabled_list_locator}
    Should Be True  ${is_active}    The menu item is not active.
    Should Be True  ${is_enabled}   The menu item is not enabled.

Check if the section in menu is active
    [Arguments]     ${active_list_locator}
    ${result}=      Run Keyword And Return Status    Element Should Be Visible    ${active_list_locator}
    RETURN        ${result}

Check if the section in menu is enabled
    [Arguments]     ${enabled_list_locator}
    ${result}=      Run Keyword And Return Status    Wait Until Element Is Enabled    ${enabled_list_locator}
    RETURN      ${result}

Click on a link on the Top Nav
    [Arguments]     ${link_href}
    Click Element   ${link_href}