require_relative '../config/environment'

def display_title
    font = TTY::Font.new("3d")
    pastel = Pastel.new

    puts pastel.white(font.write("Welcome", letter_spacing: 3))
    puts pastel.white(font.write("To", letter_spacing: 3))
    sleep(2,)
    system "clear"

    puts pastel.magenta(font.write("Dog", letter_spacing: 3))
    puts pastel.magenta(font.write("Breed", letter_spacing: 3))
    puts pastel.bright_magenta(font.write("4"))
    puts pastel.bright_magenta(font.write("You", letter_spacing: 3))
    sleep(5,)
end

display_title
system "clear"

App.new.user_status
system "clear"

App.new.user_questions


# prompt = TTY::Prompt.new
# input = prompt.select("Please setup your account", %w(Make_an_account Look_at_your_recommendations Goodbye))