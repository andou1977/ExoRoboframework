*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login to website
   Open Browser   ${url}   chrome
   Input Text  id=user-name  ${username}
   Input Text  id=password  ${password}
   Should Be Equal    ${username}  standard_user
   Click Button  id=login-button
   verify
   Sleep    5
   Close Browser


verify
   ${verifyname}=  Get Text    xpath=//div[@class="inventory_item_name "]
   Should Be Equal As Strings    ${verifyname}    Sauce Labs Backpack

*** Variables ***
${url}   https://www.saucedemo.com/
${username}    standard_user
${password}    secret_sauce


*** Test Cases ***
Login
   [Tags]    EN-21
   Login to website

