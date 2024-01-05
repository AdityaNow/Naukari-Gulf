*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Wait For Page Load
    Wait For Condition    return document.readyState == "complete"
    Wait For Condition    return jQuery.active == ${0}