require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
  
    assert_selector "h1", text: "Articles"
    assert_selector "h4", text: "Loud articles:"
    assert_selector "h4", text: "subdued articles:"
  end
end
