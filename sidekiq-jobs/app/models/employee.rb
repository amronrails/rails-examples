class Employee < ApplicationRecord
  @@size = 1000

  def self.aggregate_salaries
    sql = "Select SUM(salary) AS salary from employees"
    puts ActiveRecord::Base.connection.execute(sql).first["salary"]
  end

  def self.size
    @@size
  end
  
end
