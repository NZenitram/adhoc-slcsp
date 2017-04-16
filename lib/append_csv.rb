require_relative '../lib/rate_areas_by_zipcode.rb'
require_relative '../lib/match_rate_area_from_plans.rb'
require 'csv'

class AppendCsv
  attr_reader :zips_and_rates
  # initialize class with slcsp.csv zipcodes matched to their rates
  def initialize
    @zips_and_rates = MatchRateAreaFromPlans.new.match_silver_plans_by_zip
  end
  # create a new slcsp.csv with the proper header
  def create_csv
    CSV.open('./data/slcsp.csv', 'wb') do |csv|
      csv << ['zipcode', 'rate']
    end
    build_csv
  end
  # iterate over matched rates and zipcodes and append slcsp.csv
  def build_csv
    @zips_and_rates.each do |zip|
      CSV.open('./data/slcsp.csv', 'ab') do |csv|
        if zip[1].class == Array
          csv << [zip[0], nil]
        else
          csv << [zip[0], zip[1]]
        end
      end
    end
  end
end
