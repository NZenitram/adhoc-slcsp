require_relative 'test_helper'
require_relative '../lib/plans.rb'

class PlansTest < Minitest::Test
  def setup
    @file_path = './data/plans.csv'
  end

  def test_plans_object_contains_plans_data
    data = Plans.data
    assert_equal "74449NR9870320", data.first[0]
  end
end
