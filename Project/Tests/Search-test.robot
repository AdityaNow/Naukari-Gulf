*** Settings ***
Documentation    This Test Will Search NaukariGulf Website

## Library Files
Library           SeleniumLibrary
Library           RPA.Windows
Library           OperatingSystem

Resource          ../Keywords/session-keywords.robot
Resource          ../PageObjects/search-test-po.robot


Test Setup           Open Browser To Home Page    ${BROWSER}
Test Teardown        Close Browser


*** Test Cases ***

Search Bar Test
    Login To NaukariGulf
# Click Search Button
    Wait Until Element Is Enabled    ${searchJobsBtn}
    Click Element    ${searchJobsBtn}
    Sleep    3s
    Wait Until Element Is Enabled    ${keywordsInput}
    Click Element    ${keywordsInput}
    Input Text    ${keywordsInput}    Ceo
    Sleep    2s
    Click Element    ${searchJobsInput}
    Sleep    2s
