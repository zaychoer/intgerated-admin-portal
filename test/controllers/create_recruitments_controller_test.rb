require 'test_helper'

class CreateRecruitmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name" do
    get create_recruitments_first_name_url
    assert_response :success
  end

  test "should get last_name" do
    get create_recruitments_last_name_url
    assert_response :success
  end

  test "should get email" do
    get create_recruitments_email_url
    assert_response :success
  end

  test "should get phone_number:integer" do
    get create_recruitments_phone_number:integer_url
    assert_response :success
  end

  test "should get address:text" do
    get create_recruitments_address:text_url
    assert_response :success
  end

end
