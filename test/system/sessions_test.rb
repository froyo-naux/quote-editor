require "application_system_test_case"

class SessionsTest < ApplicationSystemTestCase
  setup do
    @user = users(:accountant)
  end

  test "visiting the index" do
    sign_in_as @user
  end

  test "signing in" do
    visit sign_in_url
  end

  test "signing out" do
    sign_in_as @user
  end
end
