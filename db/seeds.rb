# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Creates qualification and subject records for database from parsed JSON feed.

# Parses JSON feed into Ruby hash.
URL = "https://api.gojimo.net/api/v4/qualifications"
response = HTTParty.get(URL)
qualifications = response.parsed_response

qualifications.each do |qualification|
  qual = Qualification.create(name: qualification["name"], country: qualification.dig("country","name"))
  qualification["subjects"].each do |subject|
    Subject.create(name: subject["title"], colour: subject["colour"], qualification_id: qual.id)
  end
end
