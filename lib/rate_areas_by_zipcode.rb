require_relative 'slcsp.rb'
require_relative 'zips.rb'
require_relative 'plans.rb'

class RateAreasByZipCode
  attr_reader :slcsp_zipcodes, :rate_areas

  def initialize
    @slcsp_zipcodes = Slcsp.zipcodes
    @rate_areas = Zips.rate_areas
  end
end
