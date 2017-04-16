require_relative 'plans.rb'
require_relative '../lib/rate_areas_by_zipcode.rb'

class MatchRateAreaFromPlans
  attr_reader :rate_area_by_zip
  # initialize MatchRateAreaFromPlans with data object that matches rate areas to zipcodes
  def initialize
    @rate_area_by_zip = RateAreasByZipCode.new.zipcode_rate_areas
  end
  # slected only 'Silver' rated plans from Plans.csv
  def select_silver_plans
    search_criteria = {"metal_level" => "Silver"}
    matches = Plans.data.find_all do |row|
      match = true
      match = match && ( row["metal_level"] == search_criteria["metal_level"])
    end
    matches
  end
  # match Silver rated plans to their zipcodes and rate areas
  def match_silver_plans_by_zip
    silver_plans = MatchRateAreaFromPlans.new.select_silver_plans
    @rate_area_by_zip.each do |zip, rate_area|
      silver_plans.find_all do |row|
        match = true
        match = match && ( row["state"] == rate_area[0] ) && ( rate_area[1] == row["rate_area"] )
        if match
          @rate_area_by_zip[zip] = row['rate']
        end
      end
    end
    @rate_area_by_zip
  end
end
