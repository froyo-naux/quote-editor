require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  test 'should get new' do
    get sign_up_url
    assert_response :success
  end

  test 'should sign up' do
    # TODO: register a new user
  end
end
