*** Settings ***
Library           SeleniumLibrary
Library           ../Keywords/config-variables.py 
    
Resource          generic-keywords.robot
Resource          ../PageObjects/edit-profile-po.robot

*** Keywords ***

Click Arrow Button To Profile Page
    Wait Until Element Is Enabled    ${arrowBtnForProfile}
    Click Element    ${arrowBtnForProfile}
    Wait For Page Load

Edit CV Headline
    Wait Until Element Is Enabled    ${EditBtnCVHeadline}
    Click Element    ${EditBtnCVHeadline}
    Wait For Page Load

Enter Text For CV Headline
    [Arguments]    ${input}
    Wait Until Element Is Enabled    ${cvTextArea}
    Input Text    ${cvTextArea}    ${input}    ${True}