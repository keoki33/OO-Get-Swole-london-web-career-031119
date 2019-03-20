class Membership
  attr_reader :cost
  attr_accessor :lifter, :gym

  @@all = []

  def self.all
    @@all
  end

  def initialize(cost, lifter, gym)
    @lifter = lifter
    @gym = gym
    @cost = cost
    @@all << self
  end



end
