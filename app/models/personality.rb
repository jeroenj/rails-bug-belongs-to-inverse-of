class Personality < ActiveRecord::Base
  belongs_to :user, inverse_of: :personalities

  accepts_nested_attributes_for :user
end
