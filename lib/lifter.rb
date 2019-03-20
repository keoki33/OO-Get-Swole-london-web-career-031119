class Lifter
  attr_reader :name, :lift_total
  attr_accessor

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end


  def sign_membership(gym, cost)
    Membership.new(cost, self, gym)
  end

  def list_of_memberships_to_lifter
    Membership.all.select {|x| x.lifter == self}
  end

  def list_of_gyms_to_member
    list_of_memberships_to_lifter.map {|x| x.gym}
  end


  def self.lift_average_of_all_lifters
    (@@all.map {|x| x.lift_total}.inject(:+)) / @@all.length
  end

  def cost_of_lifter_memberships
      list_of_memberships_to_lifter.map {|x| x.cost}.inject(:+)
  end



end
