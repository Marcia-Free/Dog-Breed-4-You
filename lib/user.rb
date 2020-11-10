class User < ActiveRecord::Base

    has_many :users_breed_recommendations
    has_many :dog_recommendations, through: :users_breed_recommendations

end