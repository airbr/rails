require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # called before every single test
  # setup do
  #    @article = articles(:one)

  #    @articletwo = articles(:two)
  # end

  # # called after every single test
  # teardown do
  #   # when controller is using cache it may be a good idea to reset it afterwards
  #   Rails.cache.clear
  # end

  # test "should show article" do
  #   # Reuse the @article instance variable from setup
  #   get article_url(@article)
  #   assert_response :success

  #   get article_url(@articletwo)
  #   assert_response :success
  # end

  # test "should destroy article" do
  #   assert_difference("Article.count", -1) do
  #     delete article_url(@article)
  #   end

  #   assert_redirected_to articles_path
  # end

  # test "should update article" do
  #   patch article_url(@article), params: { article: { title: "updated" } }

  #   assert_redirected_to article_path(@article)
  #   # Reload association to fetch updated data and assert that title is updated.
  #   @article.reload
  #   assert_equal "updated", @article.title
  # end
end
