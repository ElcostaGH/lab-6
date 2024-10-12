class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user  # Asegúrate de que esta línea esté presente
  validates :author, presence: true
  validates :content, presence: true
end
