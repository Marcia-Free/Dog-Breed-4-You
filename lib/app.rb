require_relative "user.rb"
require 'pry'

class App 
    attr_accessor :users_response

    def initialize
        @users_response = users_response
    end

    def user_status
        prompt = TTY::Prompt.new
        input = prompt.select("What is your current status?", %w(New_User Existing_User))
        #user_input = gets.chomp

        #binding.pry
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

        #need to change this to update the user, not create a new one
        @users_response = User.new(name: "user_name", activity_level: activity_level_input, 
        kid_friendly: kid_friendly_input, dog_size: dog_size_input, hypoallergenic: hypoallergenic_input)

            if selection == "Continue"
                #users_response.save
                #puts users_response.name
                puts "...Generating Cute Cuddly Friends... "
                sleep(2,)
                recommendations
            elsif selection == "Start_Over"
                system "clear"
                user_questions
            end
    end

    def recommendations
        puts "You get all the dogs! (Booted into Recommendation method)"
        
        test = Breed.where(activity_level: users_response.activity_level, 
                kid_friendly: users_response.kid_friendly,
                dog_size: users_response.dog_size, 
                hypoallergenic: users_response.hypoallergenic)


        perfect_dogs = test.all.map do |dog|
            dog.breed
            #binding.pry
        end
        #system "clear"
        puts perfect_dogs
        
    end


end


