class Event < ApplicationRecord
  # Class method (that's why it uses "self.")
  def self.upcoming
    where("starts_at > ?", Time.now).order("starts_at")
  end

  # Instance method
  def free?
    # technically it should be self.price but self is implied here
    # because we're inside the model
    price.blank? || price.zero?
  end
end
