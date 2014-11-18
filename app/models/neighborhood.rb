class Neighborhood < ActiveRecord::Base
  validates(:name, { :uniqueness => true, :presence => true })

  has_many(:venues, { :class_name => "Venue", :foreign_key => "neighborhood_id" })
end
