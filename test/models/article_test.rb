require "test_helper"

class ArticleTest < ActiveSupport::TestCase

  test "should not save article without title" do
    article = Article.new
    assert_not article.save, "Saved the article without a title"
  end

  test "should not save article without minimum of 10 body characters" do
    article = Article.new(title: "Hello Rails", body: "two", status: "subdued")
    assert_not article.save, "Saved the article without body of ten characters"
  end

  test "correctly saved article with characters" do
    article = Article.new(title: "Hello Rails3", body: "Way more than ten characters", status: "subdued")
    assert article.save
  end

  
end
