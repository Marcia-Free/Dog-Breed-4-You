class User < ActiveRecord::Base
    has_many :users_breeds
    has_many :breeds, through: :users_breeds


end