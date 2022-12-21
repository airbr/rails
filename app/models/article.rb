class Article < ApplicationRecord
    include Visible
  
    has_many :comments, dependent: :destroy
    has_many :likes, dependent: :destroy
  
    validates :user, presence: true
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end
  