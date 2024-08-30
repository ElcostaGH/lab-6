class Post < ApplicationRecord
    validates :author, presence: true
    validates :title, presence: true, length: { maximum: 100}
    validates :content, presence: true, length: { minimum: 141}
    validates :published, presence: true, enum: { } #PENDIENTE
end

#For Post's the published attribute 
#must be an enum with 2 options: published or unpublished.