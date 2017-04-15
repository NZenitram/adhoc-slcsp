require_relative 'test_helper'
require_relative '../lib/csv_reader'

class CsvReaderTest < Minitest::Test

  def test_csv_reader_exists
    csv = CsvReader.new
    assert csv
  end


end
