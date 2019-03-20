class Gym
  attr_reader :name
  attr_accessor

  @@all = []

  def self.all
    @@all
  end


  def initialize(name)
    @name = name
    @@all << self
  end


  def membership_list_matching_gym
    Membership.all.select {|membership| membership.gym == self}
  end

  def membership_list_lifters_gym
    membership_list_matching_gym.map {|membership| membership.lifter}
  end

  def list_names_lifters_to_gym
    membership_list_lifters_gym.map {|x| x.name}
  end

  def combined_lift_total
    membership_list_lifters_gym.map {|x| x.lift_total}.inject(:+)
    end


end
