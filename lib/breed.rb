class Breed < ActiveRecord::Base
    has_many :users_breeds
    has_many :users, through: :users_breeds


    # def breed_recommendation
    #     criteria = 0
    #    #=> if activity_level input == "High" && size input == "Large" && hypoallergenic input == "Yes"
    #     Breed.find_by(activity_level: "High", kid_friendly: "Yes")

    #     # Breed.all.select do |breed|
    #     #     breed.activity_level == "High"
    #     # end
    # end

    # my_breeds = 
        

    # end
    
end