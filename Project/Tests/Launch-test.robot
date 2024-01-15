*** Settings ***
Documentation    This Test Will Launch NaukariGulf Website

## Library Files
Library           SeleniumLibrary
Library           RPA.Windows
Library           OperatingSystem

Test Setup           Open Browser To Home Page    ${BROWSER}
Test Teardown        Close Browser

## Resource Files
Resource         ../Keywords/generic-keywords.robot
Resource         ../PageObjects/global-variables.robot
Resource         ../PageObjects/launch-test-po.robot
Resource         ../Keywords/session-keywords.robot


*** Test Cases ***
Launch NaukariGulf Url
    Login To NaukariGulf