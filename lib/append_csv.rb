require_relative '../lib/rate_areas_by_zipcode.rb'
require_relative '../lib/match_rate_area_from_plans.rb'
require 'csv'

class AppendCsv
  attr_reader :zips_and_rates

  def initialize
    @zips_and_rates = MatchRateAreaFromPlans.new.match_silver_plans_by_zip
  end

  def create_csv
    CSV.open('./data/slcsp1.csv', 'wb') do |csv|
      csv << ['zipcode', 'rate']
    end
    build_csv
  end

  def build_csv
    @zips_and_rates.each do |zip|
      CSV.open('./data/slcsp1.csv', 'ab') do |csv|
        require 'pry', binding.pry
        csv << [zip[0], zip[1]]
      end
    end
  end
end
