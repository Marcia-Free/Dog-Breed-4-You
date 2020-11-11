class User < ActiveRecord::Base
    has_many :users_breeds
    has_many :breeds, through: :users_breeds

    def self.create_new_user  # ==> if input == "New_User"
        puts "Please create your username:"
        user_name = gets.chomp

        system "clear"

        if User.find_by(name: user_name)
            puts "Uh-Oh! Looks like that username is already taken! Please create a new one."
            create_new_user
        else
            current_user = User.create(name: user_name)
            puts "Username #{current_user.name} was created successfully! Welcome #{current_user.name}!"
        end
        current_user
    end

    def self.find_existing_user # ==> if input == "Existing_User"
        puts "Please enter your username:"
        user_name = gets.chomp
        current_user = User.find_by(name: user_name)

        if User.exists?(name: user_name)
            puts "Welcome back, #{current_user.name}!"
        
        else
            puts "Sorry! Username does not exist! Please enter a different username."
            find_existing_user
            #=>option to create new one or enter different username
        end
        current_user

    end


end