class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :bookclub_users
    has_many :bookclubs, through: :bookclub_users
end
