*** Settings ***
Library    Browser

*** Test Cases ***

 TetraPak Footer
    New Browser    headless=${FALSE}
    New Page       https://www.tetrapak.com/sv-se/contact-us
    Browser.Click    xpath =//a[contains(text(),'Om Tetra Pak')]

