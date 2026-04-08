# Practical Exercise

## Project Overview

This repository contains two separate sets of work:

1. Java sample programs demonstrating condition-based output.
2. A Robot Framework Selenium automation suite for adding two high-priced electronics items to an Amazon shopping cart.

---

## Repository Structure

- `DisplayResult.java` - A simple Java program that prints numbers from 100 down to 1 and substitutes text for multiples of 3, 5, or both.
- `DisplayResult1.java` - A variation that reads runtime input for the maximum number and the two divisor values, then prints the corresponding output.
- `Keywords/` - Robot Framework keyword definitions for the shopping cart automation.
- `Object_Repository/` - Locator variables used by Robot Framework keywords.
- `TestCases/` - The Robot Framework test suite file defining the test case flow.
- `TestData/` - Test data and timeout variables used by the Robot Framework suite.

---

## Java Sample Programs

### `DisplayResult.java`

This program:
- Prints numbers from 100 down to 1.
- Prints `Testing` if a number is divisible by both 3 and 5.
- Prints `Agile` if a number is divisible by 5 only.
- Prints `Software` if a number is divisible by 3 only.
- Prints the number itself otherwise.

### `DisplayResult1.java`

This program is similar but takes input from the user:
- maximum number
- first multiple
- second multiple

The output rules are the same, but the divisor values are configurable at runtime.

---

## Robot Framework Test Suite

### Purpose

The Robot Framework suite automates a browser-based scenario on Amazon India:
- open the website
- navigate to the Electronics category
- select Televisions
- choose a brand (`Samsung`)
- sort results by `Price: High to Low`
- add the top two products to the cart
- verify 2 items are present in the cart

### Key files

- `TestCases/TC_Checkout_Two_Most_Expensive_Items.robot`
  - Main suite file defining the test flow and setup/teardown.
- `Keywords/AddToCart_keywords.robot`
  - Implements reusable Robot Framework keyword steps.
- `Object_Repository/AddToCart_ObjectRepostory.robot`
  - Contains locators for page elements.
- `TestData/AddToCart_TestData.robot`
  - Defines URLs, browser settings, category names, brand name, sort option, expected item count, and wait timeouts.

### Test flow

1. `Launch Browser and Open Application`
2. `Verify that Application Opened`
3. `Go to Menu and Navigate to Electronics Section`
4. `Select Television from Electronics`
5. `Select Television Brand`
6. `Checkout Two Most Expensive TV`
7. `Validate Items Added to Cart`

---

## How to Run

1. Install Robot Framework and SeleniumLibrary.
2. Make sure a compatible browser driver (ChromeDriver for Chrome) is available in your PATH.
3. From the repository root, run:

```bash
robot TestCases/TC_Checkout_Two_Most_Expensive_Items.robot
```

> Note: The Robot Framework test suite expects Amazon India (`https://www.amazon.in/`) and uses locators that depend on the current page structure.

---

## Notes

- The Java samples are independent examples and are not used by the Robot Framework automation.
- The Robot Framework suite is modular: test data, objects, and keywords are separated into dedicated files.
- If any Amazon UI elements or page layout changes, the locators in `Object_Repository/AddToCart_ObjectRepostory.robot` may require updates.
