require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
#methods: help, play, list, exit_jukebox

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
#  i = 0
#  while i < songs.length
#    puts "#{i + 1}. #{songs[i]}"
#    i += 1
#  end
  songs.each_with_index do |song, index|
    puts "#{index +1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
    songs.each_with_index do |song,index|

      if user_input == song
        puts "Playing #{song}"
      elsif user_input == "#{index +1}"
        puts "Playing #{song}"
      else
        puts "Invalid input, please try again"
        break
      end
    end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.chomp
  until user_input == "exit"
    if user_input != "exit"
      case user_input
        when "list"
          list(songs)
        when "play"
          play(songs)
        when "help"
          help
        end
        puts "Please enter a command:"
        user_input = gets.chomp
      end
    end
  if user_input == "exit"
    exit_jukebox
  end
end


