require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the index" do # this is called a makro it's the same as def test_visiting_the_index
    visit root_url # visit is a method from Capybara
    assert_selector "h1", text: "Product" # assert_selector is a method from Capybara, if true then green
  end

  test "display as many cards as there are products" do
    visit root_url
    assert_selector ".card-product", count: Product.count
  end

  test "lets signed in user create a new product" do
    login_as users(:george) # Warden::TestHelpers from test_helper.rb
    visit "products/new"

    fill_in "product_name", with: "My new product"
    fill_in "product_tagline", with: "My new tagline"

    click_on "Create Product"

    assert_text "Change your Life: Learn to code"
  end
end
