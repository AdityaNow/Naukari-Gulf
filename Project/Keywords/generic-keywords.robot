*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${saveButton}        //button[@type='submit']


*** Keywords ***
Wait For Page Load
    Wait For Condition    return document.readyState == "complete"
    Wait For Condition    return jQuery.active == ${0}

Click Save
    Wait Until Element Is Enabled    ${saveButton}
    Click Element    ${saveButton}
    Sleep    1s