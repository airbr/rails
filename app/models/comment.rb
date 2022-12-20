class Comment < ApplicationRecord
  # include Visible

  belongs_to :article, counter_cache: true
end
