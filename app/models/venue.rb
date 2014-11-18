class Venue < ActiveRecord::Base
  validates(:name, { :uniqueness => true, :presence => true })
  validates(:address, { :presence => true })

  belongs_to :neighborhood, :class_name => "Neighborhood", :foreign_key => "neighborhood_id"

  has_many :favorites, :class_name => "Favorite", :foreign_key => "venue_id"
end
