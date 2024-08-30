class Post < ApplicationRecord
    enum published: { draft: 0, published: 1 }
    validates_with EmailValidator, attributes: [:author]
    validates :title, presence: true, length: { maximum: 100}
    validates :content, presence: true, length: { minimum: 141}
  end