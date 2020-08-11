class BloodOath
  attr_accessor :follower, :cult, :initiation_date

  @@all = []

  def initialize(follower, cult, initiation_date)
    @follower = follower
    @cult = cult
    @initiation_date = initiation_date
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    earliest = BloodOath.all.map do |blood_oath|
      blood_oath.initiation_date
    end.min
    BloodOath.all.find do |blood_oath|
      blood_oath.initiation_date == earliest
    end
  end

end

# * `BloodOath.first_oath`
#   * returns the `Follower` instance for the follower that made the very first blood oath