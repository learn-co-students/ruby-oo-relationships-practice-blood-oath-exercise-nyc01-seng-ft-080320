require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


john = Follower.new("John", 18, "Sup?")
mark = Follower.new("Mark", 24, "Bro?")
peter = Follower.new("Peter", 33, "Dude?")

church1 = Cult.new("Church1", 0, "Rome", "Nah Bro")
church2 = Cult.new("Church2", 0, "Rome", "Yea Bro")
church3 = Cult.new("Church3", 0, "Salt Lake City", "Hey Sis")




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits