#
# Outputs a csv of 'Applications' - Linking PersonId to JobId
#

require 'active_support/time'
require 'csv'
require 'Faker'

jobs_file = '../jobs/jobs.csv'
job_count = File.readlines(jobs_file).count - 1

persons_file = '../persons/persons.csv'
persons_count = File.readlines(persons_file).count - 1

CSV.open('./applications.csv', 'wb') do |csv|
  csv << ['PersonId', 'JobId', 'ApplicationDate']
  25.times do |app|
    data = Array.new
    data << rand(1..persons_count)
    data << rand(1..job_count)
    data << Faker::Date.between(from: 1.week.ago, to: Date.today)
    csv << data
  end
end
