require_relative 'slcsp.rb'
require_relative 'zips.rb'
require_relative 'plans.rb'

class RateAreasByZipCode
  attr_reader :slcsp_zipcodes, :rate_areas, :matches

  def initialize
    @slcsp_zipcodes = Slcsp.zipcodes
    @rate_areas = Zips.rate_areas
    @matches = Hash.new
  end

  def zipcode_rate_areas
    @slcsp_zipcodes.each do |zip|
      search_criteria = {"zipcode" => zip}
      Zips.data.find_all do |row|
        match = true
        search_criteria.keys.each do |key|
          match = match && ( row[key] == search_criteria[key] )
          @matches[zip] = row["rate_area"]          
        end
        require 'pry', binding.pry
        match
      end
    end
    @matches
  end

end
