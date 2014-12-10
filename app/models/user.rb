class User < ActiveRecord::Base
  has_many :personalities, inverse_of: :user

  accepts_nested_attributes_for :personalities
end
