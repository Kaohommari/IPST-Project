***Keywords***
Wait And Click
    [Arguments]                     ${loactor}
    Wait Until Element Is Visible   ${loactor}
    Click Element                   ${locator}

Open My IPST Using Chrome 
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --ignore-certificate-errors
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    ${kwargs}=    BuiltIn.Create Dictionary    executable_path=/Users/kaohommari/IPST/chromedriver
    Create Webdriver    Chrome    chrome_options=${chrome_options}    kwargs=${kwargs}
    Go to    http://202.139.199.68:3000/

Go to VDO Preview
    Input Text          ${DASHBOARD.SEARCH.INPUT}     วิดีทัศน์
    Wait And Click      ${DASHBOARD.SEARCH.BUTTON}
    Wait And Click      ${DASHBOARD.FIRSTVDO.FIELD}







