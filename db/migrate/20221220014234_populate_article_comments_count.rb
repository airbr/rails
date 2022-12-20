class PopulateArticleCommentsCount < ActiveRecord::Migration[7.0]
  def up
    Article.find_each do |article|
      Article.reset_counters(article.id, :comments)
    end
  end
end
