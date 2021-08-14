*** Settings ***
Library     SeleniumLibrary
Variables   ../TestData/environment.yaml
Variables   ../TestData/data.yaml
Resource    ../Resources/Keywords/Pages/Dashboard_IPST.resource
Resource    ../Resources/Locator/Pages/Dashboard_IPST.resource

*** Test Cases ***
Open Chrome
    Open Browser   ${URL_IPST}    chrome
Open Edge
    Open Browser    ${URL_IPST}    edge
Open IPST 
    Open My IPST Using Chrome 
    Go to VDO Preview    
