require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest
  test "should get team" do
    get static_page_team_url
    assert_response :success
  end

end
