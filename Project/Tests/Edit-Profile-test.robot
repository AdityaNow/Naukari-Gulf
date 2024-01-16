*** Settings ***
Documentation    This Test Will Edit Profile On NaukariGulf Website

## Library Files
Library           SeleniumLibrary
Library           RPA.Windows

Resource          ../Keywords/edit-profile-keywords.robot
Resource          ../PageObjects/edit-profile-po.robot
Resource          ../Keywords/session-keywords.robot

Test Setup           Open Browser To Home Page    ${BROWSER}
Test Teardown        Close Browser


*** Test Cases ***

Edit Profile Test
    Login To NaukariGulf
    Sleep    2s
    Click Arrow Button To Profile Page
    Edit CV Headline
    Enter Text For CV Headline    Software QA Engineer | 5 yrs | Test Automation| Selenium,Cypress,Robot Framewor
    Click Save
    Edit CV Headline
    Enter Text For CV Headline    Software QA Engineer | 5 yrs | Test Automation| Selenium,Cypress,Robot Framework
    Click Save
    Sleep    1.5s