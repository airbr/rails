require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit "/"
  
    assert_selector "h1", text: "Articles"
  end
end
