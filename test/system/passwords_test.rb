require "application_system_test_case"

class PasswordsTest < ApplicationSystemTestCase
  setup do
    @user = sign_in_as(users(:accountant))
  end

  test "updating the password" do
  end
end
