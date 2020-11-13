class Favorite < ActiveRecord::Base
    belongs_to :user 
    belongs_to :breed

    def favorite_puppies
        system "clear"
        puts "These are your favorites!"
        puts ""
            Breed.new.user_breeds.find_all do |dog|
                puts dog.breed
            end

        prompt = TTY::Prompt.new
        input = prompt.select("What would you like to do?", %w(Puppy_Details Delete_Puppy Go_Back Exit))
        if input == "Puppy_Details"
            puppy_details

            prompt = TTY::Prompt.new
            selection = prompt.select("What would you like to do?", %w(Go_Back Exit))
                if selection == "Go_Back"
                    favorite_puppies
                else selection == "Exit"
                    exit
                end

        elsif input == "Delete_Puppy"
            delete
        elsif input == "Go_Back"
            system "clear"
            App.next_move
        else input == "Exit"
            system "clear"
            App.exit
        end

    end


    def delete
        puppy_details
        puts ""
        prompt = TTY::Prompt.new
        delete_choice = prompt.ask("Which dog wasn't a good boy... (Type dog id - case sensitive)", default: ENV["Dog Delete"])

        puts "#{delete_choice} has been deleted :( "
        sleep(3,)
            delete_me = Favorite.destroy_by(breed_id: delete_choice)
        favorite_puppies
    end


    def puppy_details
        system "clear"
        Breed.new.user_breeds.map do |dog|
            puts "id: #{dog.id} - #{dog.breed}, Energy: #{dog.activity_level}, Size: #{dog.dog_size}, Kid friendly: #{dog.kid_friendly}, Hypoallergenic: #{dog.hypoallergenic}"
            puts ""
        end
    end


end