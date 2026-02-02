*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open KKU Computing Website
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome_options}    add_argument    --no-sandbox
    Call Method    ${chrome_options}    add_argument    --disable-dev-shm-usage
    Call Method    ${chrome_options}    add_argument    --headless
    Call Method    ${chrome_options}    add_argument    --disable-gpu
    Call Method    ${chrome_options}    add_argument    ${"--window-size=1920,1080"}


    Create Webdriver    Chrome    options=${chrome_options}
    Go To    https://computing.kku.ac.th
    Title Should Be    วิทยาลัยการคอมพิวเตอร์ มหาวิทยาลัยขอนแก่น - College of Computing, Khon Kaen University
    Close Browser
