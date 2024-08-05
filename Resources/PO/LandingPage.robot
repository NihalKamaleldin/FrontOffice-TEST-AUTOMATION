*** Settings ***
Documentation
Library         SeleniumLibrary


*** Variables ***
${INTRO_HEADLINE}               It's Nice To Meet You
*** Keywords ***

Verify Landing Page is Loaded
        Check The Landing Page Intro Heading


Check The Landing Page Intro Heading
        wait until page contains            ${INTRO_HEADLINE}
