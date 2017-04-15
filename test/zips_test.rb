require_relative 'test_helper'
require_relative '../lib/zips.rb'

class ZipsTest < Minitest::Test
  def setup
    @file_path = './data/zips.csv'
  end

  def test_zips_object_contains_plans_data
    data = Zips.data
    assert_equal "36749", data.first[0]
  end
end
