require 'test_helper'

class SiteHomeTest < ActionDispatch::IntegrationTest
  test "home links" do
    get root_path
    assert_select "a[href=?]",signup_path
    get signup_path
    assert_select "title", full_title("Sign up")
  end
end
