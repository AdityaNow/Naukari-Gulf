*** Settings ***
Documentation    This Test Will Launch NaukariGulf Website

## Library Files
Library           SeleniumLibrary

## Resource Files
Resource    ../Keywords/common-keywords.robot


*** Test Cases ***
Launch NaukariGulf Url
    Open Browser To Login Page
    [Teardown]    Close Browser


*** Keywords ***
Open Browser To Login Page
    Open Browser    https://www.naukrigulf.com/
    Sleep    0.2s
    Wait For Page Load
    Title Should Be    Jobs in Gulf - Jobs in Middle East - Job Search - Job Vacancies - Naukrigulf.com