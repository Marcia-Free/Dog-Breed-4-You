class Breed < ActiveRecord::Base
    has_many :users_breeds
    has_many :users, through: :users_breeds

    
end