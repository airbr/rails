class RemoveResponsesCountToArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :responses_count, :integer
  end
end
