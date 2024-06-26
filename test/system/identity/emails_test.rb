require "application_system_test_case"

class Identity::EmailsTest < ApplicationSystemTestCase
  setup do
    @user = sign_in_as(users(:accountant))
  end

  test "updating the email" do
  end

  test "sending a verification email" do
  end
end
