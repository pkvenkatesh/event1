class Location < ActiveRecord::Base
  attr_accessible :name, :address_street, :address_city, :address_state, :address_country, :date, :time, :category, :latitude, :longitude
  
  geocoded_by :address
  after_validation :geocode 

 CAT = ['Kids', 'shopping', 'Dinning']

def address
    [self.address_street, self.address_city, self.address_state, self.address_country].compact.join(",")
  end
end
