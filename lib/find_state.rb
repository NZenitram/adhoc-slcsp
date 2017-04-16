require_relative 'plans.rb'
require 'csv'
require 'pry'

class FindStates

  def self.states
    data = Plans.data
    data['state'].uniq
  end

  def self.find_unused_states
    states = ["AL", "AK", "AZ", "AR", "CA", "CO", "CT", "DE", "FL",
              "GA", "HI", "ID", "IL", "IN", "IA", "KS", "KY", "LA",
              "ME", "MD", "MA", "MI", "MN", "MS", "MO", "MT", "NE",
              "NV", "NH", "NJ", "NM", "NY", "NC", "ND", "OH", "OK",
              "OR", "PA", "RI", "SC", "SD", "TN", "TX", "UT", "VT",
              "VA", "WA", "WV", "WI", "WY"]
  end
end
