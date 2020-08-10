require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


john = Follower.new("John", 18, "Sup?")
mark = Follower.new("Mark", 24, "Bro?")
peter = Follower.new("Peter", 33, "Dude?")

church = Cult.new("Church", 0, "Rome", "Nah Bro")




binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits