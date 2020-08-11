class Cult
  attr_accessor :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def self.all
    @@all
  end

  def blood_oaths
    BloodOath.all.select do |blood_oath|
      blood_oath.cult == self
    end
  end

  def followers
    self.blood_oaths.map do |blood_oath|
      blood_oath.follower
    end.uniq
  end

  def cult_population
    self.followers.count
  end

  def recruit_follower(follower)
    BloodOath.new(follower, self, Time.now.strftime("%Y/%m/%d").to_s)
  end

  def self.find_by_name(name)
    Cult.all.find do |cult|
      cult.name == name
    end
  end

  def self.find_by_location(location)
    Cult.all.select do |cult|
      cult.location == location
    end
  end

  def self.find_by_founding_year(year)
    Cult.all.select do |cult|
      cult.founding_year == year
    end
  end

  def average_age
    total = self.followers.sum do |follower|
        follower.age
    end
    total/followers.length
  end

  def my_followers_mottos
    self.followers.map do |follower|
      follower.life_motto
    end
  end

  def self.least_popular
    least = Cult.all.map do |cult|
      cult.cult_population
    end.min
    Cult.all.find do |cult|
      cult.cult_population == least
    end
  end

  def self.most_common_location
    most_common = Cult.all.sort_by do |cult|
      cult.location.size
    end.last
    most_common.location
  end

end




# * `Cult.most_common_location`
#   * returns a `String` that is the location with the most cults




# * `Cult.least_popular`
#   * returns the `Cult` instance who has the least number of followers :(

# * `Cult#my_followers_mottos`
#   * prints out all of the mottos for this cult's followers
# **`Cult`**
# * `Cult#average_age`
#   * returns a `Float` that is the average age of this cult's followers
# * `Cult#name`
#   * returns a `String` that is the cult's name
# * `Cult#location`
#   * returns a `String` that is the city where the cult is located
# * `Cult#founding_year`
#   * returns an `Integer` that is the year the cult was founded
# * `Cult#slogan`
#   * returns a `String` that is this cult's slogan
# * `Cult#recruit_follower`
#   * takes in an argument of a `Follower` instance and adds them to this cult's list of followers
# * `Cult.all`
#   * returns an `Array` of all the cults
# * `Cult#cult_population`
#   * returns an `Integer` that is the number of followers in this cult


# * `Cult.find_by_name`
#   * takes a `String` argument that is a name and returns a `Cult` instance whose name matches that argument
# * `Cult.find_by_location`
#   * takes a `String` argument that is a location and returns an `Array` of cults that are in that location

# * `Cult.find_by_founding_year`
#   * takes an `Integer` argument that is a year and returns all of the cults founded in that year
