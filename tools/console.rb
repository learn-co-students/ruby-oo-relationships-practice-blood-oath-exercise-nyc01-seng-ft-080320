require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###### Cults ######
c1 = Cult.new("Blood", "Milan", 1982, "DIE")
c2 = Cult.new("Mary", "New York", 1922, "sit pretty")
c3 = Cult.new("Jesus", "Chicago", 2004, "died for your sins")
c4 = Cult.new("Saints", "New York", 2015, "the innocent")
c5 = Cult.new("Blah", "Paris", 2011, "help me")

###### Followers ######
f1 = Follower.new("Justin", 17, "live free or die")
f2 = Follower.new("Rudy", 27, "i need a snack")
f3 = Follower.new("Blade", 47, "too cool for school")

###### Blood Oath ######

#b2 = BloodOath.new(f2, c2, "2010/03/02")
b3 = BloodOath.new(f3, c3, "2017/04/14")
b4 = BloodOath.new(f2, c4, "2016/12/30")
b5 = BloodOath.new(f1, c2, "1987/06/07")
b6 = BloodOath.new(f3, c2, "1987/06/07")
b7 = BloodOath.new(f1, c2, "1987/06/07")
b8 = BloodOath.new(f3, c2, "1987/06/07")




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#binding.pry

#puts "Mwahahaha!" # just in case pry is buggy and exits
Pry.start
