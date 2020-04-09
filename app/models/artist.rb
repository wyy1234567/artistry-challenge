class Artist < ApplicationRecord

    has_many :posts
    has_many :instruments, through: :posts

    validates :name, presence: true
    validates :title, uniqueness: true
end
