require 'test_helper'

class PersonalityTest < ActiveSupport::TestCase
  test 'inverse_of' do
    personality = Personality.new name: 'foo', user_attributes: { login: 'bar' }
    assert personality.name, 'foo'
    assert personality.user.login, 'bar'
    assert personality.user.personalities.first, personality
    assert personality.user.personalities.first.name, 'foo'
  end
end
