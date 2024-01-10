*** Settings ***
Documentation    This Test Will Search NaukariGulf Website

## Library Files
Library           SeleniumLibrary
Library           RPA.Windows
Library           OperatingSystem
Library           ../Keywords/config-variables.py

Resource          ../Keywords/session-keywords.robot
Resource          ../PageObjects/search-test-po.robot


Test Setup           Open Browser To Home Page    ${BROWSER}
Test Teardown        Close Browser


*** Test Cases ***

Search Bar Test
# Open Login Window
    Click Element    ${loginBtn}
    Wait For Page Load
# Get Credentials From Config File
    ${user}=    get_config_value    Login    Username    Project/Utility/config.ini
    ${pass}=    get_config_value    Login    Password    Project/Utility/config.ini
# Enter Username
    Input Text    ${enterEmailIdInput}    ${user}
# Enter Password
    Input Text    ${enterPassInput}    ${pass}
    Click Element   ${loginSubmitBtn}
# Wait For Page To Load
    Wait For Page Load
# Validate Successful Login
    Wait Until Element Is Enabled    ${profileNameSpan}
    ${profileName}    SeleniumLibrary.Get Text    ${profileNameSpan}
    Should Be Equal As Strings    ${profileName}    ${PROFILE}
# Click Search Button
    Wait Until Element Is Enabled    ${searchJobsBtn}
    Click Element    ${searchJobsBtn}
    Sleep    3s
    Wait Until Element Is Enabled    ${keywordsInput}
    Click Element    ${keywordsInput}
    Input Text    ${keywordsInput}    Ceo
    Sleep    2s
    Click Element    ${searchJobsInput}
    Sleep    10s
