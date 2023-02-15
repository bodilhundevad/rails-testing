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
end
