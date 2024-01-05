*** Settings ***
Documentation    This Test Will Launch NaukariGulf Website

## Library Files
Library           SeleniumLibrary
Library    RPA.Windows


Test Setup           Open Browser To Home Page    ${Browser}
Test Teardown        Close Browser

## Resource Files
Resource         ../Keywords/common-keywords.robot
Resource         ../PageObjects/global-variables.robot
Resource         ../PageObjects/launch-test-po.robot


*** Test Cases ***
Launch NaukariGulf Url
    Click Element    ${loginBtn}

*** Keywords ***
Open Browser To Home Page
    [Arguments]    ${browser}
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Sleep    0.15s
    Wait For Page Load
    Title Should Be    ${webTitle}