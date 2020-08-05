class Book < ApplicationRecord
    has_many :bookclubs
    #has many users through bookclubs and bookclub users???
end
