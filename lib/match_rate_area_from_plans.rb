
require_relative '../lib/rate_areas_by_zipcode.rb'

class MatchRateAreaFromPlans
  attr_reader :rate_area_by_zip

  def initialize
    @rate_area_by_zip = RateAreasByZipCode.new.zipcode_rate_areas
    @matches = Hash.new
  end

  def select_silver_plans
    search_criteria = {"metal_level" => "Silver"}
    matches = Plans.data.find_all do |row|
      match = true
      match = match && ( row["metal_level"] == search_criteria["metal_level"])
    end
    matches
  end

  def match_silver_plans_by_zip
    silver_plans = MatchRateAreaFromPlans.new.select_silver_plans
    @rate_area_by_zip.values.each do |zip|
      search_criteria = { "rate_area" => zip }
      silver_plans.find_all do |row|
        match = true
        match = match && ( row["zipcode"] == search_criteria["zipcode"] )
        if match
          @matches[zip] = row['rate']
        end
      end
    end
    @matches
  end
end
