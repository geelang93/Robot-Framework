*** Settings ***
Library         SeleniumLibrary
Resource        Resource/common/variable.robot

*** Keywords ***
User able open website
    go to                           ${url}

User able go to login page
    click element                   ${masuk_button}

User able input email
    input text                      @{login_email}

User able input password
    input password                  @{user_password}

User input wrong password
    input password                  @{user_wrong_pasword}

User submit credential
    click element                   ${submit_masuk}

User should be landing on home page
    element text should be          @{drop_down_profile}

User should be receive message login error
    element text should be          @{login_error}


