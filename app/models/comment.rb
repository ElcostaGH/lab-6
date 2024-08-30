class Comment < ApplicationRecord
    validates :author, email: true
    validates :content, presence: true
  end