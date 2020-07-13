require 'test_helper'

class JobTesterControllerTest < ActionDispatch::IntegrationTest
  test "should get employees" do
    get job_tester_employees_url
    assert_response :success
  end

  test "should get totalsalary" do
    get job_tester_totalsalary_url
    assert_response :success
  end

end
