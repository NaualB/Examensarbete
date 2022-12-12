*** Settings ***
Library    Browser

*** Test Cases ***

 Stockholm office is visible in Sweden contact info
    New Browser    headless=${FALSE}
    New Page       https://eficode.com/contact
    Browser.Click    xpath =//a[contains(text(),'Sweden')]
    Get Text    xpath =//h3[contains(text(),'Sweden')]
    Get Text    xpath =//h4[contains(text(),'Stockholm')]

