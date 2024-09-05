class Post < ApplicationRecord
    enum published: { draft: 0, published: 1 }
    validates :author, email: true
    validates :title, presence: true, length: { maximum: 100}
    validates :content, presence: true, length: { minimum: 141}
    has_many :comments
  end