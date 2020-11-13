require_relative "user.rb"
require_relative "breed.rb"
require_relative "favorite.rb"

class App 

    def user_status
        prompt = TTY::Prompt.new
        selection = prompt.select("What is your current status?", %w(New_User Existing_User Exit))

        system "clear"
        
        if selection == "New_User"
            User.create_new_user
        elsif selection == "Existing_User"
            User.find_existing_user
        else selection == "Exit"
            App.exit
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
        selection = prompt.select("Do these look right to you?", %w(Continue Start_Over Exit))
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
                Breed.new.puppy_choices  

            elsif selection == "Start_Over"
                system "clear"
                user_questions

            else selection == "Exit"
                App.exit
            end
    end


    def self.next_move
        prompt = TTY::Prompt.new
        selection = prompt.select("What would you like to do next?", %w(Find_New_Dog_Recommendations View_My_Favorite_Puppies Exit))
        
        if selection == "Find_New_Dog_Recommendations"
            system "clear"
            App.new.user_questions
            system "clear"
        elsif selection == "View_My_Favorite_Puppies"

            if Breed.new.user_breeds.length == 0
                prompt = TTY::Prompt.new
                system "clear"
                next_move_selection = prompt.select("Looks like you dont have favorites yet. What would you like to do?", %w(Find_New_Dog_Recommendations Exit))
                    if next_move_selection == "Find_New_Dog_Recommendations"
                        system "clear"
                        App.new.user_questions
                        system "clear"
                    else next_move_selection == "Exit"
                        App.exit
                    end
            end


            system "clear"
            Favorite.new.favorite_puppies
        else selection == "Exit"
            App.exit
        end
    end

    
    def self.exit
        system "clear"
        puts "Thank you for visiting Dog Breed 4 You! See you next time!".magenta
        sleep(3,)
        system "clear"
        exit!
    end

end


