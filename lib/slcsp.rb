require_relative '../lib/csv_reader'

module Slcsp
  def self.data
    CsvReader.new('./data/slcsp.csv').open_csv
  end

  def self.zipcodes
    self.data['zipcode']
  end
end
