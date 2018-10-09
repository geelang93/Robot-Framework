*** Settings ***
Library         SeleniumLibrary
Library         OperatingSystem

*** Variables ***
# Object Login
${url}                      https://passpod.com/id/
${masuk_button}             xpath=//a[contains(text(),'Masuk')]
@{login_email}              xpath=//input[@placeholder='Email']  umum@jurnal.com
@{user_password}            xpath=//input[@placeholder='Kata Sandi']  jurnal123
@{user_wrong_pasword}       xpath=//input[@placeholder='Kata Sandi']  jurnal
${submit_masuk}             xpath=//button[contains(text(),'Masuk')]
@{drop_down_profile}        xpath=//a[@id='dropdownProfile']  Akun Saya
@{login_error}              xpath=//h5[contains(text(),'Login Error')]  Login Error
