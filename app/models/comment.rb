class Comment < ApplicationRecord
    validates :author, email: true
    validates :content, presence: true
    belongs_to :post
  end