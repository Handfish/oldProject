require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "a user should enter a name" do
  	user = User.new
  	assert !user.save
  	assert !user.errors[:name].empty?
  end

end
