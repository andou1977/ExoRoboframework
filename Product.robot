
*** Settings ***
Library    RPA.Browser
*** Keywords ***
Login to website
   Open Browser   ${url}   firefox
   Input Text  id=user-name  ${username}
   Input Text  id=password  ${password}
   Should Be Equal    ${username}  standard_user
   Click Button  id=login-button
   Sleep    5
   Close Browser

*** Variables ***
${url}   https://www.saucedemo.com/
${username}    standard_user
${password}    secret_sauce


*** Test Cases ***
Login
   Login to website

