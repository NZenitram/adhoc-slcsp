require_relative '../lib/csv_reader.rb'
require_relative '../lib/rate_areas_by_zipcode.rb'

class MatchRateAreaFromPlans
  attr_reader :rate_area_by_zip

  def initialize
    @rate_area_by_zip = RateAreasByZipCode.new.zipcode_rate_areas
  end


end
