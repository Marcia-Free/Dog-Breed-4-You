class App

    def user_status
        prompt = TTY::Prompt.new
        input = prompt.select("What is your current status?", %w(New_User Existing_User))
        #user_input = gets.chomp

        #binding.pry
    end


end