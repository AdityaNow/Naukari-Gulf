*** Settings ***
Library           SeleniumLibrary
Library           ../Keywords/config-variables.py 
    
Resource          generic-keywords.robot  
Resource          ../PageObjects/external-links-po.robot
    

*** Keywords ***    

Verify Social Media Footer Links
    #config read all social media links
    ${fb}=    get_config_value    Social    fb    Project/Utility/config.ini
    ${linkedin}=    get_config_value    Social    linkedin    Project/Utility/config.ini
    ${twitter}=    get_config_value    Social    twitter    Project/Utility/config.ini

    #counter
    ${count}    Set Variable    ${1}
    FOR    ${counter}    IN RANGE    ${1}    ${3}
        ${hrefLink}    Get Element Attribute    (${socialLinks})[${counter}]  href
        IF    ${counter} == ${1}
            Should Be Equal As Strings    ${hrefLink}    ${fb}
        ELSE IF    ${counter} == ${2}
            Should Be Equal As Strings    ${hrefLink}    ${linkedin}
        ELSE
            Should Be Equal As Strings    ${hrefLink}    ${twitter}
        END
    END