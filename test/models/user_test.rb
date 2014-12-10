require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'inverse of' do
    user = User.new login: 'foo', personalities_attributes: [{ name: 'bar' }]
    assert user.login, 'foo'
    assert user.personalities.first.name, 'bar'
    assert user.personalities.first.user, user
    assert user.personalities.first.user.login, 'foo'
  end
end
