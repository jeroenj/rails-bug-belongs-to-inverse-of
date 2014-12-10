This works as expected:

````
user = User.new login: 'foo', personalities_attributes: [{ name: 'bar' }]
# => #<User id: nil, login: "foo", created_at: nil, updated_at: nil>

user.personalities
# => #<ActiveRecord::Associations::CollectionProxy [#<Personality id: nil, name: "bar", user_id: nil, created_at: nil, updated_at: nil>]>

user.personalities.first.user
# => #<User id: nil, login: "foo", created_at: nil, updated_at: nil>
````

This does not work as expected:

````
personality = Personality.new name: 'foo', user_attributes: { login: 'bar' }
# => #<Personality id: nil, name: "foo", user_id: nil, created_at: nil, updated_at: nil>

personality.user
# => #<User id: nil, login: "bar", created_at: nil, updated_at: nil>

personality.user.personalities
# => #<ActiveRecord::Associations::CollectionProxy []>
````
