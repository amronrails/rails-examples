require 'faker'
class InitiateEmployees
  include Sidekiq::Worker
  sidekiq_options retry: false

  def perform(start_date)
    puts "New job started at #{start_date}"
    Employee.size.times do 
      Employee.create(
        name: Faker::Name.name,
        salary: rand(2000)+2000
      )
    end
  end
  
end