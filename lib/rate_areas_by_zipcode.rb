require_relative 'slcsp.rb'
require_relative 'zips.rb'

class RateAreasByZipCode
  attr_reader :slcsp_zipcodes, :rate_areas, :matches

  def initialize
    @slcsp_zipcodes = Slcsp.zipcodes
    @matches = Hash.new
    @state = Hash.new
  end

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
