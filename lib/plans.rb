require_relative '../lib/csv_reader.rb'

module Plans
  def self.data
    CsvReader.new('./data/plans.csv').open_csv
  end
end
