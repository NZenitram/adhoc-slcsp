require_relative 'test_helper'
require_relative '../lib/csv_reader'

class CsvReaderTest < Minitest::Test
  def setup
    @csv = CsvReader.new('./data/plans.csv')
  end

  def test_csv_reader_exists
    assert_instance_of CsvReader, @csv
  end

  def test_csv_reader_takes_a_file_path
    assert_equal './data/plans.csv', @csv.file_path
  end

  def test_csv_reader_opens_csv
    assert_instance_of CSV::Table, @csv.open_csv
  end
end
