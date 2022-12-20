class AddUserToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :user, :integer
  end
end
