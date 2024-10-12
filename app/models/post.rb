class Post < ApplicationRecord
  enum published: { draft: 0, published: 1 }
  validates :user, presence: true
  validates :author, email: true
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { minimum: 141 }
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  after_initialize :set_published

  private

  def set_published
    self.published ||= :draft
  end
end