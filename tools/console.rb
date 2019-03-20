# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

lifter1 = Lifter.new("Lifter1", 185)
lifter2 = Lifter.new("Lifter2", 175)
lifter3 = Lifter.new("Lifter3", 300)
lifter4 = Lifter.new("Lifter4", 500)
lifter5 = Lifter.new("Lifter5", 1000)

gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")
gym4 = Gym.new("Gym4")
gym5 = Gym.new("Gym5")

membership1 = lifter1.sign_membership(gym1, 25)
membership2 = lifter2.sign_membership(gym1, 30)
membership3 = lifter3.sign_membership(gym5, 55)
membership4 = lifter4.sign_membership(gym5, 1000)
membership5 = lifter5.sign_membership(gym3, 5)
membership6 = lifter1.sign_membership(gym2, 5)

# p Gym.all
# p Membership.all
# p Lifter.all
# p gym1.membership_list_matching_gym
# p gym1.membership_list_lifters_gym
# p gym1.list_names_lifters_to_gym
# p gym.combined_lift_total
# p lifter1.list_of_memberships_to_lifter
# p lifter1.list_of_gyms_to_member
# p Lifter.lift_average_of_all_lifters
p lifter1.cost_of_lifter_memberships

# binding.pry

puts "Gains!"
