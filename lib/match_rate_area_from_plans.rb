
require_relative '../lib/rate_areas_by_zipcode.rb'

class MatchRateAreaFromPlans
  attr_reader :rate_area_by_zip

  def initialize
    @rate_area_by_zip = RateAreasByZipCode.new.zipcode_rate_areas
  end

  def select_silver_plans
    search_criteria = {"metal_level" => "Silver"}
    Plans.data.find_all do |row|
      match = true
      match = match && ( row["metal_level"] == search_criteria["metal_level"])
    end
  end

  def method_name

  end
end
