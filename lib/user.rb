class User < ActiveRecord::Base
    has_many :users_breeds
    has_many :breeds, through: :users_breeds

    def self.create_new_user  # ==> if input == "New_User"
        puts "Please create your username:"
        user_name = gets.chomp

        system "clear"

        if User.find_by(name: user_name)
            system "clear"
            puts "Uh-Oh! Looks like that username is already taken! Please create a new one."
            create_new_user
        else
            current_user = User.create(name: user_name)
            system "clear"
            puts "Username #{current_user.name} was created successfully! Welcome #{current_user.name}!"
        end
        current_user
    end

    def self.find_existing_user # ==> if input == "Existing_User"
        puts "Please enter your username:"
        user_name = gets.chomp
        current_user = User.find_by(name: user_name)

        if User.exists?(name: user_name)
            system "clear"
            puts "Welcome back, #{current_user.name}!"
        
        else
            system "clear"
            # puts "Sorry! Username does not exist! Please enter a different username."
            # find_existing_user
            #=>option to create new one or enter different username

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
        current_user
    end


end