class Comment < ApplicationRecord
  # include Visible
  validates :user, presence: true

  belongs_to :article, counter_cache: true
end
