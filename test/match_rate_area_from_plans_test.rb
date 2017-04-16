require_relative 'test_helper'
require_relative '../lib/match_rate_area_from_plans.rb'

class MatchRateAreaFromPlansTest < Minitest::Test

  def test_the_class_accepts_the_rate_area_by_zip
    hash = MatchRateAreaFromPlans.new.rate_area_by_zip
    assert_instance_of Hash, hash
  end

  def test_select_silver_plans
    plans = MatchRateAreaFromPlans.new.select_silver_plans
    assert_instance_of Array, plans
    assert_instance_of CSV::Row, plans[0]
  end

  def test_matches_silver_plans
    plans = MatchRateAreaFromPlans.new.match_silver_plans_by_zip
    require 'pry', binding.pry
    
  end
end
