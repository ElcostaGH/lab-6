require './email_validator'
class Post < ApplicationRecord 
    validates :author, presence: true, validator: EmailValidator, message: "must be a valid user email"
    validates :title, presence: true, length: { maximum: 100}
    validates :content, presence: true, length: { minimum: 141}
    validates :published, presence: true, inclusion: { in: Post.published.values } 
end
    #No funciono correctamente el enum de published ni el requisito de el correo
end