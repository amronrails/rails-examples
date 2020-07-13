require 'faker'
class Person < ApplicationRecord
  @@size = 5
  def calculate_salary
    return self.salary + self.bonus
  end
  def self.init
    @@size.times{Person.create(salary: rand(1000)+2000, name: Faker::Name.name, bonus:500)}
  end
end

class Employee < Person
  def calculate_salary
    return self.salary + self.bonus
  end
  # calling .create with the class name sets class automatically
  def self.init
    @@size.times{Employee.create(salary: rand(1000)+2000, name: Faker::Name.name, bonus:1000)}
  end
end

class Manager < Person
  # self.inheritance_column = :_type_disabled
  self.table_name= "managers"

  def calculate_total_salary
    self.calculate_salary + employee_bounses
  end

  def self.init
    @@size.times{Manager.create(salary: rand(1000)+2000, name: Faker::Name.name, bonus:2000, employee_bounses:10000)}
  end
end