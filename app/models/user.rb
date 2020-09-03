class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :bookclub_users
    has_many :bookclubs, through: :bookclub_users

    # user.messagee is received messages
    has_many :messagee, foreign_key: :recipient_id, class_name: 'Message'  
    # user.senders gives all the people who sent me a message
    has_many :senders, through: :messagee
    
    # user.messaged is sent messages
    has_many :messaged, foreign_key: :sender_id, class_name: 'Message' 
    # user.recipients give all the people i messaged
    has_many :recipients, through: :messaged
end
