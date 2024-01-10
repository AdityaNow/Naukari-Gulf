*** Settings ***
Library    SeleniumLibrary

Resource    common-keywords.robot
Resource    ../PageObjects/global-variables.robot
Resource    ../PageObjects/launch-test-po.robot


*** Keywords ***
Open Browser To Home Page
    [Arguments]    ${browser}
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window
    Sleep    0.15s
    Wait For Page Load
    Title Should Be    ${webTitle}