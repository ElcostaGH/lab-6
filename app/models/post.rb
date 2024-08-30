class Post < ApplicationRecord
    validates :author, presence: true
    validates :title, presence: true, length: { maximum: 100}
    validates :content, presence: true, length: { minimum: 10} #Cambiar a 141 cuando todo funcione
    validates :published, presence: true
    #PENDIENTE el ENUM
    #For Post's the published attribute 
    #must be an enum with 2 options: published or unpublished.

end