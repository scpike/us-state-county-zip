# Convert the raw .csv file to a yaml file for easier processing

require 'yaml'
require 'csv'

def row_to_hash(row)
  {
    "state_fips" => row["state_fips"],
      "state"      => row["state"],
    "state_abbr" => row["state_abbr"],
    "county"     => row["county"],
    "city"       => row["city"]
  }
end

list = { }
CSV.foreach("geo-data.csv", :headers => true) do |row|
  list[row["zipcode"]] = row_to_hash(row)
end

puts list.to_yaml
