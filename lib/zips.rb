require_relative '../lib/csv_reader'

module Zips
  def self.data
    CsvReader.new('./data/zips.csv').open_csv
  end
end
