require "test_helper"

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(email: "sediq@gmail.com", password:"1234")
    assert user.valid?
  end

  test 'invalid without name' do
    user = User.new()
    refute user.valid?
    assert_not_nil user.errors[:email]  
  end
end
