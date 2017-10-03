*** Settings ***
Documentation  Amazon test
Resource  ../resources/Page_object/LandingPage.robot
Resource  ../resources/Page_object/TopNav.robot
Resource  ../resources/Page_object/SearchResults.robot
Resource  ../resources/Page_object/Product.robot
Resource  ../resources/Page_object/Cart.robot
Resource  ../resources/Page_object/SignIn.robot


*** Keywords ***
Search for products
    LandingPage.Load
    TopNav.Search for products
    SearchResults.Verify Search Completed
Select Product from Search Results
    SearchResults.Click Product link
    Product.Verify Page Loaded

Add product to Card
    Product.Add to Cart
    Cart.Verify Page Loaded

Begin Checkout
    Cart.Proceed to Checkout
    SignIn.Verify Page Loaded