class Post < ApplicationRecord
    belongs_to :artist 
    belongs_to :instrument
end
