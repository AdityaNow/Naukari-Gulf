*** Settings ***
Library     SeleniumLibrary
Library     ../Keywords/config-variables.py

Resource    generic-keywords.robot
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

Login To NaukariGulf
# Open Login Window
    Click Element    ${loginBtn}
    Wait For Page Load
# Get Credentials From Config File
    ${user}=    get_config_value    Login    Username    Project/Utility/config.ini
    ${pass}=    get_config_value    Login    Password    Project/Utility/config.ini
# Check Type Of Input for Username & Enter Username
    ${usrType}    Get Element Attribute    ${enterEmailIdInput}    type
    Should Be Equal As Strings    ${usrType}    email
    Input Text    ${enterEmailIdInput}    ${user}
# Check Type Of Input for Password & Enter Password
    ${passType}    Get Element Attribute    ${enterPassInput}    type
    Should Be Equal As Strings    ${passType}    password
    Input Text    ${enterPassInput}    ${pass}
    Click Element   ${loginSubmitBtn}
# Wait For Page To Load
    Wait For Page Load
# Validate Successful Login
    Wait Until Element Is Enabled    ${profileNameSpan}
    ${profileName}    SeleniumLibrary.Get Text    ${profileNameSpan}
    Should Be Equal As Strings    ${profileName}    ${PROFILE}