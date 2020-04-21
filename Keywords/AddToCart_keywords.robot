*** Settings ***
Documentation    These are the keywords to add two most expensive items to the shopping cart from Electronics Section
Library          SeleniumLibrary
Resource         ../TestData/AddToCart_TestData.robot    
Resource         ../Object_Repository/AddToCart_ObjectRepostory.robot

*** Keywords ***
Launch Browser and Open Application
    Open Browser    ${applicationURL}    ${browser}
    Maximize Browser Window
    Wait Until Element Is Visible    ${SIGNIN_TABLINK}    ${MED_WAIT_TIMEOUT}

Verify that Application Opened
    Page Should Contain Element    ${SIGNIN_TABLINK}
    
Go to Menu and Navigate to Electronics Section
    Wait Until Element Is Enabled    ${OPEN_MENU_LINK}    ${MED_WAIT_TIMEOUT}
    Mouse Over    ${OPEN_MENU_LINK}
    Click Element    ${OPEN_MENU_LINK}
    Wait Until Element Is Visible    ${CATEGORY_MENU_CUSTOMER_LABEL}    ${MED_WAIT_TIMEOUT}
    ${countOfCategories}    Get Element Count    ${SHOP_BY_CATEGORY_OPTIONS}
    :FOR    ${i}    IN RANGE    1    ${countOfCategories}+1
    \    ${CATEGORY_OPTION}    Get WebElement    (${SHOP_BY_CATEGORY_OPTIONS})[${i}]
    \    ${actualCategoryName}    Get Text    ${CATEGORY_OPTION}
    \    Run Keyword If    '${actualCategoryName}'=='${categoryElectronics}'    Click Element    ${CATEGORY_OPTION}
    \    Exit For Loop If    '${actualCategoryName}'=='${categoryElectronics}'

Select Television from Electronics
    Wait Until Element Is Visible    ${ELECTRONICS_SUBCATEGORIES}    ${MED_WAIT_TIMEOUT}
    ${countOfSubCategories}    Get Element Count    ${SHOP_BY_CATEGORY_OPTIONS}
    :FOR    ${i}    IN RANGE    1    ${countOfSubCategories}+1
    \    ${SUB_CATEGORY_OPTION}    Get WebElement    (${SHOP_BY_CATEGORY_OPTIONS})[${i}]
    \    ${actualSubCategoryName}    Get Text    ${SUB_CATEGORY_OPTION}
    \    Run Keyword If    '${actualSubCategoryName}'=='${subCategoryTV}'    Click Element    ${SUB_CATEGORY_OPTION}
    \    Exit For Loop If    '${actualSubCategoryName}'=='${subCategoryTV}'
       
Select Television Brand
    Wait Until Element Is Visible    ${TV_BRAND_SECTION}    ${MED_WAIT_TIMEOUT}
    ${countOfBrands}    Get Element Count    ${BRAND_OPTIONS}
    :FOR    ${i}    IN RANGE    1    ${countOfBrands}+1
    \    ${BRAND_OPTION}    Get WebElement    (${BRAND_OPTIONS})[${i}]
    \    ${actualBrandName}    Get Text    ${BRAND_OPTION}
    \    Run Keyword If    '${actualBrandName}'=='${brandNameTV}'    Click Element    ${BRAND_OPTION}
    \    Exit For Loop If    '${actualBrandName}'=='${brandNameTV}'     
        
Checkout Two Most Expensive TV
    Set Browser Implicit Wait    ${MED_WAIT_TIMEOUT}
    Wait Until Element Is Enabled    ${SORT_SELECT_DROPDOWN}    ${MED_WAIT_TIMEOUT}
    Wait Until Keyword Succeeds    ${RETRY_COUNT}    ${QUICK_WAIT_TIMEOUT}    Mouse Over    ${SORT_SELECT_DROPDOWN}
    Wait Until Keyword Succeeds    ${RETRY_COUNT}    ${QUICK_WAIT_TIMEOUT}    Click Element    ${SORT_SELECT_DROPDOWN}    
    Wait Until Element Is Visible    ${SORT_SELECT_DROPDOWN_LIST}    ${MED_WAIT_TIMEOUT}
    Page Should Contain Element    ${SORT_SELECT_DROPDOWN_LIST}        
    ${countOfOptions}    Get Element Count    ${SORT_SELECT_DROPDOWN_OPTIONS}
    :FOR    ${i}    IN RANGE    1    ${countOfOptions}+1
    \    ${actualOptionText}    Get Text    (${SORT_SELECT_DROPDOWN_OPTIONS})[${i}]
    \    Run Keyword If    '${actualOptionText}'=='${SortByOption}'    Click Element    (${SORT_SELECT_DROPDOWN_OPTIONS})[${i}]
    \    Exit For Loop If    '${actualOptionText}'=='${SortByOption}'            
    Wait Until Element Is Visible    ${RESULTS_AFTER_SORTING}    ${WAIT_TIMEOUT}
    :FOR    ${i}    IN RANGE    1    3
    \    ${OPTIONS_TO_CHECKOUT}    Get WebElement    (${SEARCH_RESULTS_LIST})[${i}]
    \    Scroll Element Into View    ${OPTIONS_TO_CHECKOUT}
    \    Mouse Over    ${OPTIONS_TO_CHECKOUT}
    \    Click Element    ${OPTIONS_TO_CHECKOUT}
    \    Select Window    NEW
    \    Wait Until Element Is Enabled    ${ADD_TO_CART_BUTTON}    ${MED_WAIT_TIMEOUT}
    \    Mouse Over    ${ADD_TO_CART_BUTTON}
    \    Click Element    ${ADD_TO_CART_BUTTON}
    \    Wait Until Element Is Visible    ${ADDED_ITEM_TO_CART_ROW}    ${MED_WAIT_TIMEOUT}    
    \    Capture Page Screenshot    ItemAddedToCart${i}.png
    \    Close Window
    \    Select Window    MAIN
    \    Reload Page    
                           
Validate Items Added to Cart
    Wait Until Element Is Enabled    ${CART_TABLINK}    ${MED_WAIT_TIMEOUT}
    Mouse Over    ${CART_TABLINK}
    Click Element    ${CART_TABLINK}
    Wait Until Element Is Visible    ${SHOPPING_CART_ENTRY}    ${WAIT_TIMEOUT}
    ${countOfAddedItems}    Get Element Count    ${SHOPPING_CART_ITEMS}
    Should Be Equal As Numbers    ${countOfAddedItems}    ${expectedAddedItemsCount}
    Capture Page Screenshot    AddedItemsInShoppingCart.png        
    
        
            