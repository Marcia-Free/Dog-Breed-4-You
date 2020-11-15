
class Breed < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites

    
    def puppy_choices
        choices = Breed.where(activity_level: User.current_user.activity_level, 
                kid_friendly: User.current_user.kid_friendly,
                dog_size: User.current_user.dog_size, 
                hypoallergenic: User.current_user.hypoallergenic)

            perfect_dogs = choices.all.map do |dog|
                dog.breed 
            end

        system "clear"

            if perfect_dogs.length == 0
                prompt = TTY::Prompt.new
                puppy_choices_selection = prompt.select("Looks like there is no dog out there for you. Are you maybe a cat person?", %w(Try_Again Exit))
                    if puppy_choices_selection == "Try_Again"
                        App.new.user_questions
                    else puppy_choices_selection == "Exit"
                        App.exit
                    end
            end

        puts perfect_dogs 
        sleep(3,)
        self.choose_a_dog
    end 


    def choose_a_dog
        puts ""
        prompt = TTY::Prompt.new
        selection = prompt.select("Would you like to select one of the above dogs to add to your favorites, try again, or exit ".magenta.bold, %w(Select_My_Favorite_Dog Try_Again Exit))
        puts ""
        if selection == "Select_My_Favorite_Dog"
            prompt = TTY::Prompt.new
            dog_choice = prompt.ask("Please type which dog you would like to add to your favorites (case sensitive)".magenta, default: ENV["Dog Choice"])

                my_dogs = Breed.all.find do|dog| 
                    dog.breed == dog_choice
                end

            Favorite.create(user_id: User.current_user.id, breed_id: my_dogs.id)
            system "clear"
            puts "You have added a #{dog_choice} to your favorites!"
            sleep(4,)
            system "clear"
            App.next_move

        elsif selection == "Try_Again"
            App.new.user_questions
            
        else selection == "Exit"
           App.exit

        end
    end

    
    def user_breeds
        User.current_user.breeds
    end

end