*** Settings ***
Documentation    This Test Will Search NaukariGulf Website

## Library Files
Library           SeleniumLibrary
Library           RPA.Windows
Library           OperatingSystem

Resource          ../Keywords/session-keywords.robot
Resource          ../PageObjects/search-test-po.robot
Resource          ../Keywords/search-keywords.robot


Test Setup           Open Browser To Home Page    ${BROWSER}
Test Teardown        Close Browser


*** Test Cases ***

Search Bar Test
    Login To NaukariGulf
# Click Search Button
    Click Search Button
    ${key}=    get_config_value    TestData    keywd    Project/Utility/config.ini
    ${location}=    get_config_value    TestData    loc    Project/Utility/config.ini
    Input keywords In SearchBox    ${key}    ${location}
    Search Job
    Verify Search Results