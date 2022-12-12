*** Settings ***
Library    Browser


*** Test Cases ***
Robot Framework fundamentals training is one day
    New Browser    headless=${FALSE}
    New Page    https://eficode.com
    Browser.Click    xpath =//a[contains(@class,'cd-search-trigger')]
    Browser.Fill Text    css=input[name=term]    Robot Framework fundamentals training
    #Set Browser Timeout  10s
    #Press Keys    xpath =//input[contains(@class,'hs-search-field__input')]    ENTER
            Log    Using form submit with javascript because enter dosnt work
    #Using form submit with javascript because enter dosnt work
    ${ref}=    Get Element    xpath =//*[@id="cd-search"]/form
    Execute JavaScript    (elem) => elem.submit()  ${ref}
    Browser.Click    xpath =(//a[.//span[contains(normalize-space(text()),'fundamentals')]])[1]
    Get Text    xpath =//strong[contains(text(),'One day')]