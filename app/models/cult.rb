class Cult

    attr_reader :name, :founding_year
    attr_accessor :location, :slogan
    @@all = []

    def initialize(name, founding_year, location, slogan)
        @name = name
        @founding_year = founding_year
        @location = location
        @slogan = slogan
        @@all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower)
        date = join_date
        Bloodoath.new(self, follower, date)
    end

    def bloodoaths
        Bloodoath.all.select {|ba| ba.cult == self}
    end

    def followers
        bloodoaths.map {|ba| ba.follower}
    end

    def cult_population
        bloodoaths.uniq.count
    end

    def self.find_by_name(name)
        self.all.find_all {|cult| cult.name.include?(name)}
    end

    def self.find_by_location(location)
        self.all.find_all {|cult| cult.location == location}
    end

    def self.find_by_founding_year(int)
        self.all.find_all {|cult| cult.location == location}
    end

    private
    def join_date
        Time.now.strftime("%Y-%m-%d")
    end


end