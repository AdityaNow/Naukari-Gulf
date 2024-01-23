*** Settings ***
Library           SeleniumLibrary
Library           ../Keywords/config-variables.py 
    
Resource          generic-keywords.robot  
Resource          ../PageObjects/external-links-po.robot
    

*** Keywords ***    

Get Social Media Footer Links
    #config read all social media links
    ${fb}=    get_config_value    Social    fb    Project/Utility/config.ini
    ${linkedin}=    get_config_value    Social    linkedin    Project/Utility/config.ini
    ${twitter}=    get_config_value    Social    twitter    Project/Utility/config.ini
    #get all links
    #${links}    Get WebElements    ${socialLinks}
    #counter
    # ${count}    Set Variable    ${0}
    FOR    ${counter}    IN RANGE    ${0}    ${2}
        ${hrefLink}    Get Element Attribute    ${socialLinks}[${counter}]    href
        IF    ${counter} == ${0}
            Should Be Equal As Strings    ${hrefLink}    ${fb}
        ELSE IF    ${counter} == ${1}
            Should Be Equal As Strings    ${hrefLink}    ${linkedin}
        ELSE
            Should Be Equal As Strings    ${hrefLink}    ${twitter}
        END
    END
    # FOR    ${link}    IN     ${links}
    #     ${hrefLink}    Get Element Attribute    ${link}    href
    #     IF    ${count} == ${0}
    #         Should Be Equal As Strings    ${hrefLink}    ${fb}
    #     ELSE IF    ${count} == ${1}
    #         Should Be Equal As Strings    ${hrefLink}    ${linkedin}
    #     ELSE
    #         Should Be Equal As Strings    ${hrefLink}    ${twitter}
    #     END
    #     ${count}    Set Variable    ${count + 1}
    # END