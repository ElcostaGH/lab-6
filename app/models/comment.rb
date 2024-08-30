class Comment < ApplicationRecord
    validates :author, presence: true
    validates_with EmailValidator, attributes: [:author]
    validates :content, presence: true
  end