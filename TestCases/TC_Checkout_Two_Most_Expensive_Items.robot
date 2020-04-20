*** Settings ***
Library          SeleniumLibrary
Resource         ../Keywords/AddToCart_keywords.robot

Test Setup       Launch Browser and Open Application
Test Teardown    Close All Browsers
    
*** Test Cases ***
Checkout_Two_Most_Expensive_Items_From_Electronics
    Verify that Application Opened
    Go to Menu and Navigate to Electronics Section
    Select Television from Electronics
    Select Television Brand
    Checkout Two Most Expensive TV
    Validate Items Added to Cart
    
