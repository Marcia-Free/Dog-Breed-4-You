class User < ActiveRecord::Base
    has_many :users_breeds
    has_many :breeds, through: :users_breeds

    @@current_user

    def self.create_new_user  # ==> if input == "New_User"
        puts "Please create your username:"
        user_name = gets.chomp
        system "clear"
        if User.find_by(name: user_name)
            system "clear"
            puts "Uh-Oh! Looks like that username is already taken! Please create a new one."
            create_new_user
        else
            @@current_user = User.create(name: user_name)
            system "clear"
            puts "Username #{@@current_user.name} was created successfully! Welcome #{@@current_user.name}!".blue
            sleep(3,)
        end
        @@current_user
        system "clear"
        App.new.user_questions
    end


    def self.find_existing_user # ==> if input == "Existing_User"
        puts "Please enter your username:"
        user_name = gets.chomp
        @@current_user = User.find_by(name: user_name)
        if User.exists?(name: user_name)
            system "clear"
            puts "Welcome back, #{@@current_user.name}!"
            sleep(3,)
            system "clear"
            self.next_move

        else
            system "clear"

            prompt = TTY::Prompt.new
            input = prompt.select("Looks like that username does not exist! Would you like to create a new username or try again?", %w(New_Username Try_Again))


            if input == "New_Username"
                system "clear"
                self.create_new_user
            elsif input == "Try_Again"
                system "clear"
                self.find_existing_user
            end
        end
        @@current_user
    end


    # def options
    #     prompt = TTY::Prompt.new
    #     input_1 = prompt.select("You have updated your favorite dog! What would you like to do next?", %w(View_My_Favorite_Puppies Add_New_Recommendation Exit))
    #     if input_1 == "View_My_Favorite_Puppies"
    #         App.new.favorite_puppies
    #     elsif input_1 == "Add_New_Recommendation"
    #         system "clear"
    #         App.new.user_questions
    #     else input_1 == "Exit"
    #         system "clear"
    #         puts "Thank you for visiting Dog Breed 4 You! See you next time!".magenta
    #         sleep(3,)
    #         system "clear"
    #     end
    # end

    def self.next_move
        prompt = TTY::Prompt.new
        input = prompt.select("What would you like to do next?", %w(Update_Old_Recommendations View_My_Favorite_Puppies Exit))
        
        if input == "Update_Old_Recommendations"
            system "clear"
            App.new.user_questions
            system "clear"

        elsif input == "View_My_Favorite_Puppies"
            system "clear"
            App.new.favorite_puppies
        else input == "Exit"
            system "clear"
            puts "Thank you for visiting Dog Breed 4 You! See you next time!".magenta
            sleep(3,)
            system "clear"
        end
    end

    def self.current_user
        @@current_user
    end

 
    def self.next_move
        prompt = TTY::Prompt.new
        input = prompt.select("What would you like to do next?", %w(Find_New_Dog_Recommendations View_My_Existing_Recommendations Exit))
        if input == "Find_New_Dog_Recommendations"
            system "clear"
            App.new.user_questions
        elsif input == "View_My_Existing_Recommendations"
            system "clear"
            #=> view existing recommendations method, and ask if they want to keep input or change input
            #App.recommendations
        else input == "Exit"
            system "clear"
            puts "Thank you for visiting Dog Breed 4 You! See you next time!".magenta
            sleep(3,)
            system "clear"
        end
    end

    def self.current_user
        @@current_user
    end
end