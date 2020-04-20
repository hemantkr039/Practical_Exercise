*** Variables ***
#TestCases Variables
${applicationURL}             https://www.amazon.in/
${browser}                    chrome
${categoryElectronics}        TV, Appliances, Electronics
${subCategoryTV}              Televisions
${brandNameTV}                Samsung
${SortByOption}               Price: High to Low
${expectedAddedItemsCount}    2

#Wait Times
${WAIT_TIMEOUT}               40s
${MED_WAIT_TIMEOUT}           20s
${QUICK_WAIT_TIMEOUT}         5s
${WAIT_ONE}                   1s
${WAIT_TWO}                   2s
${WAIT_THREE}                 3s
${WAIT_TEN}                   10s
${WAIT_THIRTY}                30s
${RETRY_COUNT}                5
