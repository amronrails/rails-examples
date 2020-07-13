class SalaryAgregateWorker
  include Sidekiq::Worker
  sidekiq_options retry: false
  def perform()
    Employee.aggregate_salaries
  end
  
end