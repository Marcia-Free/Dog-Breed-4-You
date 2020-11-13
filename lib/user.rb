class User < ActiveRecord::Base
    has_many :favorites
    has_many :breeds, through: :favorites

    @@current_user

    def self.create_new_user  # ==> if input == "New_User"
        puts "Please create your username:".magenta.bold
        user_name = gets.chomp
        system "clear"
        if User.find_by(name: user_name)
            system "clear"
            puts "Uh-Oh! Looks like that username is already taken! Please create a new one.".red.bold
            create_new_user
        else
            @@current_user = User.create(name: user_name)
            system "clear"
            puts "Username #{@@current_user.name} was created successfully! Welcome #{@@current_user.name}!".magenta.bold
            sleep(3,)
        end
        @@current_user
        system "clear"
        App.new.user_questions
    end


    def self.find_existing_user # ==> if input == "Existing_User"
        puts "Please enter your username:".magenta.bold
        user_name = gets.chomp
        @@current_user = User.find_by(name: user_name)
        if User.exists?(name: user_name)
            system "clear"
            puts "Welcome back, #{@@current_user.name}!".magenta.bold
            sleep(3,)
            system "clear"
            App.next_move

        else
            system "clear"

            prompt = TTY::Prompt.new
            selection = prompt.select("Looks like that username does not exist! Would you like to create a new username or try again?".red, %w(New_Username Try_Again Exit))

            if selection == "New_Username"
                system "clear"
                self.create_new_user
            elsif selection == "Try_Again"
                system "clear"
                self.find_existing_user
            else selection == "Exit"
                App.exit
            end
        end
        @@current_user
    end

    def self.current_user
        @@current_user
    end

end