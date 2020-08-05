class Bookclub < ApplicationRecord
    has_many :bookclub_users
    belongs_to :book
    has_many :users, through: :bookclub_users
    has_many :comments
end
