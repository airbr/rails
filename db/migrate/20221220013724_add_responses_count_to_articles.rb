class AddResponsesCountToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :responses_count, :integer
  end
end
