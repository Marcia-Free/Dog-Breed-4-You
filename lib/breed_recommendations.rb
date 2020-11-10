class BreedRecommendations < ActiveRecord::Base

has_many :users_breed_recommendations
has_many :owners, through: :users_breed_recommendations


end