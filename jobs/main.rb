#
# Outputs CSV file of fake Job Postings. Includes:
#   Job Title
#   Department
#   Hiring Manager
#   Post Date
#

require 'Faker'
require 'csv'
require 'active_support/time'

CSV.open('./jobs.csv', 'wb') do |csv|
  csv << ['Title', 'Department', 'HiringManager', 'PostDate']
  5.times do |job|
    data = Array.new
    data << Faker::Job.title
    data << Faker::IndustrySegments.sector
    data << Faker::Name.name
    data << Faker::Date.between(from: 2.months.ago, to: Date.today)
    csv << data
  end
end
