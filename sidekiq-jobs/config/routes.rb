Rails.application.routes.draw do
  get 'job_tester/employees'
  get 'job_tester/totalsalary'
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
