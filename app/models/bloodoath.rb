class Bloodoath

    attr_reader :initiation_date, :cult, :follower
    @@all = []

    def initialize(cult, follower, initiation_date)
        @cult = cult
        @follower = follower
        @initiation_date = initiation_date
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        self.all[0]
    end

end