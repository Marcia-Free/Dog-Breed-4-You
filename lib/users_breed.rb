class UsersBreed < ActiveRecord::Base
    belongs_to :user 
    belongs_to :breed

 
end