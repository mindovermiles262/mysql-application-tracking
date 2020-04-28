require 'faker'
require 'csv'

CSV.open("./persons.csv", 'wb') do |csv|
  csv << ['Name', 'Email', 'Address', 'PhoneNumber']
  10.times do |person|
    data = Array.new
    data << Faker::Name.name
    data << Faker::Internet.email
    data << Faker::Address.full_address.gsub!(',', '')
    data << Faker::PhoneNumber.cell_phone
    csv << data
  end
end
