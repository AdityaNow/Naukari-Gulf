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
    Input keywords In SearchBox    Ceo
    Search Job