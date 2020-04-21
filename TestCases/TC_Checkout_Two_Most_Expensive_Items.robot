*** Settings ***
Documentation    Test Suite to add two most expensive items to the shopping cart from Electronics Section
Library          SeleniumLibrary
Resource         ../Keywords/AddToCart_keywords.robot

Test Setup       Launch Browser and Open Application
Test Teardown    Close All Browsers
   
*** Test Cases ***
Checkout_Two_Most_Expensive_Items_From_Electronics
    [Documentation]    
    ...    <b>Objective:</b>
    ...    Test Case to add two most expensive items to the shopping cart from Electronics Section  
    ...
    ...    <b>Pre-conditions:</b>
    ...    Launch the chrome browser and open Amazon website 
       
    Verify that Application Opened
    Go to Menu and Navigate to Electronics Section
    Select Television from Electronics
    Select Television Brand
    Checkout Two Most Expensive TV
    Validate Items Added to Cart
    
