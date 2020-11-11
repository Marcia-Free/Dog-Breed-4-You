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


end