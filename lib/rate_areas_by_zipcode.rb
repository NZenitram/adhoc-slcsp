require_relative 'slcsp.rb'
require_relative 'zips.rb'

class RateAreasByZipCode
  attr_reader :slcsp_zipcodes, :matches
  # initialize RateAreasByZipCode with Slcsp.csv zipcodes and @matches hash
  def initialize
    @slcsp_zipcodes = Slcsp.zipcodes
    @matches = Hash.new
  end
  # find all zipcode data, State and rate area for zipcodes provided in the Slcsp.csv
  def zipcode_rate_areas
    @slcsp_zipcodes.each do |zip|
      search_criteria = { "zipcode" => zip }
      Zips.data.find_all do |row|
        match = true
        match = match && ( row["zipcode"] == search_criteria["zipcode"] )
        if match
          @matches[zip] = [row['state'], row['rate_area']]
        end
      end
    end
    @matches
  end
end
