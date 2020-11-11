require_relative '../config/environment'

def display_title
    font = TTY::Font.new("3d")
    pastel = Pastel.new

    puts pastel.white(font.write("Welcome"))
    puts pastel.white(font.write("To"))
    sleep(2,)

    puts pastel.magenta(font.write("Dog"))
    puts pastel.magenta(font.write("Breed"))
    puts pastel.bright_magenta(font.write("4"))
    puts pastel.bright_magenta(font.write("You"))
    sleep(5,)
end

display_title
system "clear"

App.new.user_status


# prompt = TTY::Prompt.new
# input = prompt.select("Please setup your account", %w(Make_an_account Look_at_your_recommendations Goodbye))