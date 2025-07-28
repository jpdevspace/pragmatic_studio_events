class Event < ApplicationRecord
  def free?
    # technically it should be self.price but self is implied here
    # because we're inside the model
    price.blank? || price.zero?
  end
end
