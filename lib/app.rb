require_relative "user.rb"
require 'pry'

class App 

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
        sleep(2,)
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
        puts "Here are the answers you put: "
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
                puts "...Generating Cute Cuddly Friends... "
                User.current_user.activity_level = activity_level_input
                User.current_user.kid_friendly = kid_friendly_input
                User.current_user.dog_size = dog_size_input
                User.current_user.hypoallergenic = hypoallergenic_input
                User.current_user.save
                sleep(2,)
                recommendations

            elsif selection == "Start_Over"
                system "clear"
                user_questions
            end
    end


    def recommendations
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
    end

end


