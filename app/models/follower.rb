class Follower

    attr_reader :name
    attr_accessor :age, :life_motto
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

    def bloodoaths
        Bloodoath.all.select {|ba| ba.follower == self}
    end

    def cults
        bloodoaths.map {|ba| ba.cult}
    end

    def join_cult(cult)
        date = join_date
        Bloodoath.new(cult, self, date)
    end

    def self.of_a_certain_age(int)
        self.all.select {|follower| follower.age > int}
    end

    private
    def join_date
        Time.now.strftime("%Y-%m-%d")
    end

end