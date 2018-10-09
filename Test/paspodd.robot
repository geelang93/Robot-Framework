*** Settings ***
Library             SeleniumLibrary
Library             OperatingSystem
Resource            Resource/common/common.robot
Resource            Resource/Page Object/login.robot
Test Setup          Begin web test
Test Teardown       End web test
Documentation

*** Test Cases ***
User login with invalid credential
    [Tags]  invalid credential
    User able open website
    User able go to login page
    User able input email
    User input wrong password
    User submit credential
    User should be receive message login error

User login with valid credential
    [Tags]  valid credential
    User able open website
    User able go to login page
    User able input email
    User able input password
    User submit credential
    User should be landing on home page






