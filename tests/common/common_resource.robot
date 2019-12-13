*** Settings ***                                            
Resource    ../../libraries/src/common_library_imports.robot

*** Variables ***
${APP_URL}    http://localhost:8080
${USERNAME}   user1
${PASSWORD}   password1

*** Keywords ***
Create User
   Open Browser     ${APP_URL}
   Maximize Browser Window
   Input Text      id = username    ${USERNAME
   Input Password  id = password    ${PASSWORD}
   Input Text      id = firstname    Foo
   Input Text      id = lastname    Bar
   Input Text      id = phone    123456789
