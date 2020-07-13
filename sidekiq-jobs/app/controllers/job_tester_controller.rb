require_relative "../workers/initiate_employees.rb"
require_relative "../workers/salary_agregate_worker.rb"
class JobTesterController < ApplicationController
  def employees
    InitiateEmployees.perform_async(Time.now)
    render text: "employees are getting coocked"
  end

  def totalsalary
    SalaryAgregateWorker.perform_async()
  end
end
