class Follower
  attr_accessor :name, :age, :life_motto

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def self.all
    @@all
  end

  def blood_oaths
    BloodOath.all.select do |blood_oath|
      blood_oath.follower == self
    end
  end

  def cults
    self.blood_oaths.map do |blood_oath|
      blood_oath.cult
    end
  end

  def join_cult(cult)
    BloodOath.new(self, cult, Time.now.strftime("%Y/%m/%d").to_s)
  end

  def self.of_a_certain_age(age)
    Follower.all.select do |follower|
      follower.age >= age
    end
  end

  def my_cults_slogans
    self.cults.map do |cult|
      puts cult.slogan
    end
  end

  def self.sorted_follower_activity
    Follower.all.sort_by do |follower|
      follower.cults.size
    end
  end

  def self.most_active
    self.sorted_follower_activity.last
  end

  def self.top_ten
    self.sorted_follower_activity.reverse[0...10]
  end

  # def self.most_active
  #   most_active = Follower.all.map do |follower|
  #     follower.cults.count
  #   end.max
  #   Follower.all.find do |follower|
  #     follower.cults.count == most_active
  #   end
  # end

end




# * `Follower.most_active`
#   * returns the `Follower` instance who has joined the most cults
# * `Follower.top_ten`
#   * returns an `Array` of followers; they are the ten most active followers




# * `Follower#my_cults_slogans`
#   * prints out all of the slogans for this follower's cults
# **`Follower`**


# * `Follower.of_a_certain_age`
#   * takes an `Integer` argument that is an age and returns an `Array` of followers who are the given age or older



# * `Follower#name`
#   * returns a `String` that is the follower's name
# * `Follower#age`
#   * returns an `Integer` that is the age of the follower
# * `Follower#life_motto`
#   * returns a `String` that is the follower's life motto

# * `Follower#cults`
#   * returns an `Array` of this follower's cults

# * `Follower#join_cult`
#   * takes in an argument of a `Cult` instance and adds this follower to the cult's list of followers
# * `Follower.all`
#   * returns an `Array` of all the followers