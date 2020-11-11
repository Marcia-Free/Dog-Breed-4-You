class App

    def user_status
        prompt = TTY::Prompt.new
        input = prompt.select("What is your current status?", %w(New_User Existing_User))
        #user_input = gets.chomp

        #binding.pry
    end

    def user_questions
        puts "Let's figure out what type of dog you are looking for"
        sleep(3,)
        system "clear"
    
        prompt = TTY::Prompt.new
        activity_level = prompt.select("What is the average level of energy you want in your dog?", %w(High Medium Low))
        system "clear"

        prompt = TTY::Prompt.new
        dog_size = prompt.select("What size dog are you looking for?", %w(Large Medium Small))
        system "clear"

        prompt = TTY::Prompt.new
        kid_friendly = prompt.select("Do you need a dog that is good with kids?", %w(Yes No))
        system "clear"

        prompt = TTY::Prompt.new
        hypoallergenic = prompt.select("Do you have allergies or need a dog that is hypoallergenic?", %w(Yes No))
        system "clear"

        puts "Here are the answers you put: "
        puts ""
        sleep(2,)
        puts "Energy Level - #{activity_level}"
        sleep(1,)
        puts "Dog Size - #{dog_size}"
        sleep(1,)
        puts "Kid friendly? #{kid_friendly}"
        sleep(1,)
        puts "Hypoallergenic? #{hypoallergenic}"
        sleep(1,)
        puts ""

        prompt = TTY::Prompt.new
        selection = prompt.select("Do these look right to you?", %w(Continue Start_Over))
    
    end


end


