class UsersPetRecommendations < ActiveRecord::Base

    belongs_to :owner
    belongs_to :breed_recommendation

end