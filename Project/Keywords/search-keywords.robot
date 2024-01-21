*** Settings ***
Library           SeleniumLibrary
Library           ../Keywords/config-variables.py 
    
Resource          generic-keywords.robot  
Resource          ../PageObjects/search-test-po.robot
    

*** Keywords ***    
Click Search Button
    Wait Until Element Is Enabled    ${searchJobsBtn}
    Click Element    ${searchJobsBtn}
    Sleep    1s

Enter Keywords
    [Arguments]    ${input}
    Wait Until Element Is Enabled    ${keywordsInput}
    Click Element    ${keywordsInput}
    Input Text    ${keywordsInput}    ${input}

Enter Location
    [Arguments]    ${input}
    Wait Until Element Is Enabled    ${locationInput}
    Click Element    ${locationInput}
    Input Text    ${locationInput}    ${input}

Input keywords In SearchBox
    [Arguments]    ${keywordInput}    ${locationInput}
    Enter Keywords    ${keywordInput}
    Enter Location    ${locationInput}
    Sleep    0.2s

Search Job
    Click Element    ${searchJobsInput}
    Sleep    1s

Verify Search Results
    ${headlineText}    Get Element Attribute    ${headline}    textContent
    Wait Until Element Contains    ${headline}    Showing
    Wait Until Element Contains    ${headline}    Test Engineer Software QA Analyst Quality Automation Remote Remotely Work From Home Jobs in India