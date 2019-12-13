*** Settings ***
Resource    ../common/common_resource.robot

*** Test Cases ***
Is Service Healthy
     Create Session    app    ${APP_URL}
     ${RESPONSE}=    Get Request    app    /healthy
     Log to Console    ${RESPONSE}

    
