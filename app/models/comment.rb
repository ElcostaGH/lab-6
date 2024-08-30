require './email_validator'
class Comment < ApplicationRecord
    validates :author, presence: true, validator: EmailValidator, message: "must be a valid user email"
    validates :content, presence: true
end