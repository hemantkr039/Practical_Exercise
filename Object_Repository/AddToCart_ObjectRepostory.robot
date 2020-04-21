*** Settings ***
Documentation    Locators and Xpath's used in the testcase.

*** Variables ***
${SIGNIN_TABLINK}                  id:nav-link-accountList
${OPEN_MENU_LINK}                  id:nav-hamburger-menu
${SHOP_BY_CATEGORY_OPTIONS}        //ul[contains(@class,'hmenu-visible')]//a
${CATEGORY_MENU_CUSTOMER_LABEL}    id:hmenu-customer-name
${ELECTRONICS_SUBCATEGORIES}       //div[contains(text(),'tv, audio & cameras')]
${TV_BRAND_SECTION}                //div[contains(@class,'acs-ln-nav-expanded') and @role='section']
${BRAND_OPTIONS}                   //div[contains(@class,'acs-ln-nav-expanded') and @role='section']//div//a
${SORT_SELECT_DROPDOWN}            //span[@aria-label='Sort by:']
${SORT_SELECT_DROPDOWN_OPTIONS}    //div[contains(@class,'a-popover-inner')]//a
${SORT_SELECT_DROPDOWN_LIST}       //div[contains(@class,'a-popover-inner')]
${RESULTS_AFTER_SORTING}           //div[@id='s-skipLinkTargetForMainSearchResults']/parent::div
${SEARCH_RESULTS_LIST}             //div[contains(@class,'s-include-content-margin s-border-bottom')]//h2/a
${ADD_TO_CART_BUTTON}              id:add-to-cart-button
${ADDED_ITEM_TO_CART_ROW}          //div[@id='huc-v2-order-row-inner']
${CART_TABLINK}                    id:nav-cart
${SHOPPING_CART_ENTRY}             //div[@id='sc-active-cart']
${SHOPPING_CART_ITEMS}             //div[contains(@class,'a-row sc-list-item')]