class Instrument < ApplicationRecord
    has_many :posts 
    has_many :artists, through: :posts
    
   
end
