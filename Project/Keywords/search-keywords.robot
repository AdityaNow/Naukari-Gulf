*** Settings ***
Library           SeleniumLibrary
Library           ../Keywords/config-variables.py 
    
Resource          generic-keywords.robot  
Resource          ../PageObjects/search-test-po.robot
    

*** Keywords ***    
Click Search Button
    Wait Until Element Is Enabled    ${searchJobsBtn}
    Click Element    ${searchJobsBtn}
    Sleep    1.5s

Input keywords In SearchBox
    [Arguments]    ${input}
    Wait Until Element Is Enabled    ${keywordsInput}
    Click Element    ${keywordsInput}
    Input Text    ${keywordsInput}    ${input}
    Sleep    1s

Search Job
    Click Element    ${searchJobsInput}
    Sleep    1s