*** Settings ***
Documentation    This Test Will Verify NaukariGulf's External Links

## Library Files
Library           SeleniumLibrary
Library           RPA.Windows
Library           OperatingSystem

Resource          ../Keywords/session-keywords.robot
Resource          ../PageObjects/external-links-po.robot
Resource          ../Keywords/external-links-keywords.robot


Test Setup           Open Browser To Home Page    ${BROWSER}
Test Teardown        Close Browser


*** Test Cases ***

Social Media Links Test
    Login To NaukariGulf
    Sleep    1s
    Verify Social Media Footer Links