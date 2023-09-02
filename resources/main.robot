*** Settings ***
Library     SeleniumLibrary
### DATA
Resource    data/geral.robot
### PAGES
Resource    pages/login_page.robot
Resource    pages/inventary_page.robot
## SHARED
Resource    shared/setup_teardown.robot
