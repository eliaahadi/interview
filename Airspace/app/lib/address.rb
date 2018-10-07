require_relative 'geocoding'

class Address
  attr_accessor :lat, :lng, :full_address

  # def geocoded? 
  # geocoded_by :full_address do |obj,results|
  #   if geo = results.first
  #     obj.longitude = geo.longitude
  #     obj.latitude  = geo.latitude
  #   end
  # end
  # # end

  # def geocoded? 
  #  p results 
  # end
  # def reverse_geocoded? 
    # reverse_geocoded_by :latitude, :longitude do |obj,results|
    #   if geo = results.first
    #     obj.city    = geo.city
    #     obj.zipcode = geo.postal_code
    #     obj.country = geo.country_code
    #   end
    # end
  # end

  # def after-validation
  #   after_validation -> {
  #     self.address = self.full_address
  #     geocode
  #   }, if: ->(obj){ obj.full_address.present? and obj.full_address != obj.address }
    
  #   after_validation :reverse_geocode, unless: ->(obj) { obj.full_address.present? },
  #                   if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
  # end
end
  # p :lat

#   def geocoded?
#     p "SPEC FILE "
#     # p :lat
#     p Geocoder.search("1600 Pennsylvania Avenue NW Washington, DC 20500 USA")
#     # return :full_address
#   end

#   def reverse_geocoded?
#     true
#   end
# end



