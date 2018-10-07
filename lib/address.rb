require_relative 'geocoding'

class Address
  attr_accessor :lat, :lng, :full_address

def geocoded?
  true
end
  
end
