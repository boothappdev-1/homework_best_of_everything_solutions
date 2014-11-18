class Cuisine < ActiveRecord::Base
  validates(:name, { :uniqueness => true, :presence => true })

  has_many :dishes
end
