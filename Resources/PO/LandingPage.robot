*** Settings ***
Documentation   This file contains keywords related to the Landing Page object.
Library         SeleniumLibrary


*** Variables ***
${INTRO_HEADLINE}               It's Nice To Meet You
*** Keywords ***

Verify Landing Page is Loaded
        [Documentation]    Verify that the landing page is loaded by checking the intro heading.
        Check The Landing Page Intro Heading


Check The Landing Page Intro Heading
        [Documentation]    Wait until the landing page intro heading is present.
        wait until page contains            ${INTRO_HEADLINE}
