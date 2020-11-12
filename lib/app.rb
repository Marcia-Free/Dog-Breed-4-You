require_relative "user.rb"
require 'pry'

class App 

    attr_accessor :my_favorite_pups

    def intialize
        @my_favorite_pups = my_favorite_pups
    end

    def user_status
        prompt = TTY::Prompt.new
        input = prompt.select("What is your current status?", %w(New_User Existing_User))

        system "clear"
        
        if input == "New_User"
            User.create_new_user
        elsif input == "Existing_User"
            User.find_existing_user
        end
    end


    def user_questions

        puts "Let's figure out what type of dog you are looking for"
        sleep(3,)
        system "clear"
        #--------------Questions
        prompt = TTY::Prompt.new
        activity_level_input = prompt.select("What is the average level of energy you want in your dog?", %w(High Medium Low))
        system "clear"
        prompt = TTY::Prompt.new
        dog_size_input = prompt.select("What size dog are you looking for?", %w(Large Medium Small))
        system "clear"
        prompt = TTY::Prompt.new
        kid_friendly_input = prompt.select("Do you need a dog that is good with kids?", %w(Yes No))
        system "clear"
        prompt = TTY::Prompt.new
        hypoallergenic_input = prompt.select("Do you have allergies or need a dog that is hypoallergenic?", %w(Yes No))
        system "clear"

        #-------Verify answers to Questions
        puts "Here are the answers you put:"
        puts ""
        sleep(1,)
        puts "Energy Level - #{activity_level_input}"
        sleep(1,)
        puts "Dog Size - #{dog_size_input}"
        sleep(1,)
        puts "Kid friendly? #{kid_friendly_input}"
        sleep(1,)
        puts "Hypoallergenic? #{hypoallergenic_input}"
        sleep(1,)
        puts ""

        prompt = TTY::Prompt.new
        selection = prompt.select("Do these look right to you?", %w(Continue Start_Over))
        system "clear"



            if selection == "Continue"
                User.current_user.activity_level = activity_level_input
                User.current_user.kid_friendly = kid_friendly_input
                User.current_user.dog_size = dog_size_input
                User.current_user.hypoallergenic = hypoallergenic_input
                User.current_user.save

                system "clear"
                puts "...Generating Cute Cuddly Friends... "
                sleep(3,)
                system "clear"
                self.new_puppies  

                

            elsif selection == "Start_Over"
                system "clear"
                user_questions
            end
     end

    def new_puppies
        puts "You get all the dogs! (Booted into Recommendation method)"
        test = Breed.where(activity_level: User.current_user.activity_level, 
                kid_friendly: User.current_user.kid_friendly,
                dog_size: User.current_user.dog_size, 
                hypoallergenic: User.current_user.hypoallergenic)

        perfect_dogs = test.all.map do |dog|
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
            UsersBreed.create(user_id: User.current_user.id, breed_id: my_dogs.id)
            #binding.pry
            system "clear"
            User.next_move
        end

        # puts my_dog

        # @@my_favorite_pups << my_dog
        # if selection == "try_again"  
        #     user_questions
        # end
    end

    def favorite_puppies
        system "clear"
        puts "These are your favorites!"
        puts ""
        system "clear"
        my_breeds = User.current_user.breeds
        my_breeds.all.select do |dog|
            puts dog.breed
        end
    end

end


