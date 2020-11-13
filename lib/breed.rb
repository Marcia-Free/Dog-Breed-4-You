class Breed < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    def puppy_choices
        puts "You get all the dogs! (Booted into Recommendation method)"
        choices = Breed.where(activity_level: User.current_user.activity_level, 
                kid_friendly: User.current_user.kid_friendly,
                dog_size: User.current_user.dog_size, 
                hypoallergenic: User.current_user.hypoallergenic)

            perfect_dogs = choices.all.map do |dog|
                dog.breed 
            end

        system "clear"
        puts perfect_dogs 
        sleep(3,)
        self.choose_a_dog
    end 


    def choose_a_dog
        puts ""
        prompt = TTY::Prompt.new
        selection = prompt.select("Would you like to select one of the above dogs to add to your favorites, try again, or exit ", %w(Select_My_Favorite_Dog Try_Again Exit))
        puts ""
        if selection == "Select_My_Favorite_Dog"
            prompt = TTY::Prompt.new
            dog_choice = prompt.ask("Please type which dog you would like to add to your favorites (case sensitive)", default: ENV["Dog Choice"])

                my_dogs = Breed.all.find do|dog| 
                    dog.breed == dog_choice
                end

            Favorite.create(user_id: User.current_user.id, breed_id: my_dogs.id)
            system "clear"
            App.next_move
        elsif input == "Try_Again"
            App.user_questions
        else input == "Exit"
            App.exit
        end
    end

    
    def user_breeds
        User.current_user.breeds
    end

end