class Favorite < ActiveRecord::Base
    belongs_to :user 
    belongs_to :breed

    def favorite_puppies
        system "clear"
        puts "These are your favorites!".magenta.bold
        puts ""
            Breed.new.user_breeds.find_all do |dog|
                puts dog.breed
            end

        prompt = TTY::Prompt.new
        puts ""
        system "clear"
        selection = prompt.select("What would you like to do?".magenta.bold, %w(Puppy_Details Delete_Puppy Go_Back Exit))
        if selection == "Puppy_Details"
            self.puppy_details
                prompt = TTY::Prompt.new
                puts ""
                input = prompt.select("What would you like to do?".magenta.bold, %w(Go_Back Exit))
                if input == "Go_Back"
                    favorite_puppies
                else input == "Exit"
                    system "clear"
                    puts "Thank you for visiting Dog Breed 4 You! See you next time!".magenta
                    sleep(3,)
                    system "clear"
                end
        elsif selection == "Delete_Puppy"
            delete
        elsif selection == "Go_Back"
            system "clear"
            App.next_move
        else selection == "Exit"
            system "clear"
            puts "Thank you for visiting Dog Breed 4 You! See you next time!".magenta
            sleep(3,)
            system "clear"
        end

    end


    def delete
        puppy_details
        puts ""
        prompt = TTY::Prompt.new
        delete_choice = prompt.ask("Which dog wasn't a good boy... (Type dog id - case sensitive)".magenta, default: ENV["Dog Delete"])

        puts "#{delete_choice} has been deleted :( ".red
        sleep(3,)
            delete_me = Favorite.destroy_by(breed_id: delete_choice)
        favorite_puppies
    end


    def puppy_details
        system "clear"
        Breed.new.user_breeds.map do |dog|
            puts "id: #{dog.id} - #{dog.breed}, Energy: #{dog.activity_level}, Size: #{dog.dog_size}, Kid friendly: #{dog.kid_friendly}, Hypoallergenic: #{dog.hypoallergenic}".magenta
            puts ""
        end

        
    end


end