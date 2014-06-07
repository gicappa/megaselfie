class Event < ActiveRecord::Base
  has_many :selfies, :dependent => :destroy
  accepts_nested_attributes_for :selfies, allow_destroy: true
end
