# require 'geocoder'
# class Place < ApplicationRecord

#   attr_accessor :full_address

#   geocoded_by :full_address do |obj,results|
#     if geo = results.first
#       obj.longitude = geo.longitude
#       obj.latitude  = geo.latitude
#     end
#   end

#   def geocoded?
#     p "TESTEEEEE"
#     true
#   end

#   reverse_geocoded_by :latitude, :longitude do |obj,results|
#     if geo = results.first
#       obj.city    = geo.city
#       obj.zipcode = geo.postal_code
#       obj.country = geo.country_code
#     end
#   end
#   after_validation -> {
#     self.address = self.full_address
#     geocode
#   }, if: ->(obj){ obj.full_address.present? and obj.full_address != obj.address }
  
#   after_validation :reverse_geocode, unless: ->(obj) { obj.full_address.present? },
#                    if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
# end

class Place < ApplicationRecord
  attr_accessor :raw_address

  geocoded_by :raw_address
  reverse_geocoded_by :latitude, :longitude

  after_validation -> {
    self.address = self.raw_address
    geocode
  }, if: ->(obj){ obj.raw_address.present? and obj.raw_address != obj.address }

  after_validation :reverse_geocode, unless: ->(obj) { obj.raw_address.present? },
                   if: ->(obj){ obj.latitude.present? and obj.latitude_changed? and obj.longitude.present? and obj.longitude_changed? }
end

