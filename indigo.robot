*** Settings ***

Library    OperatingSystem    
Library    SeleniumLibrary    

*** Test Cases ***

Tc1_valid
    Append To Environment Variable    PATH    ${OUTPUT_DIR}//driver
    Open Browser    https://goindigo.in    browser=chrome
    
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    //label[text()='Round Trip']  
    Click Element    //input[@name="or-src"]  
    Click Element    (//div[@data-name="Delhi"])[1]
    Click Element    (//input[@placeholder="To"])[1]
    Click Element    (//div[@data-name="Kolkata"])[3]
    Run Keyword And Ignore Error        Click Element    //i[@class="icon-close close-pass-tooltip"]
    #Click Element    (//input[@name="or-depart"])[1] 
     Click Element    //a[text()='30']
     #Click Element    (//input[@name="or-return"])[1]
     Click Element    //a[text()='10']
     Click Element    (//button[text()='Done'])[3]    
     #Run Keyword And Ignore Error        Click Element    //i[@class="icon-close close-pass-tooltip"]
     Mouse Over    //input[@name="passenger"]
     Click Element    //input[@name="passenger"]
      FOR    ${i}    IN RANGE    1    4
        Click Element    (//button[@title="Up"])[1]    
        
    END
    FOR    ${i}    IN RANGE   1    3
        Click Element    (//button[@title="Up"])[3]    
    END
    Click Element    //button[text()='Done']    
    Click Element    (//div[@class="filter-option"])[1]
    Select From List By Value    //select[@class="form-control bw-currency-list"]    MYR
    Click Element    //div[@id="currencyView"]
    Click Element    //label[text()='Family & Friends'] 
    Sleep    2s
    Mouse Over    //span[text()='Search Flight']
    #Click Element    //span[text()='Search Flight']
    Sleep    2s    
    Click Element    //span[contains(text(),'Search Flight')]    