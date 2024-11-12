*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Set Counter To Specific Value
    Go To  ${HOME_URL}
    
    # Set the counter to 10
    Input Text  value  10
    Click Button  Set
    Page Should Contain  nappia painettu 10 kertaa
    
