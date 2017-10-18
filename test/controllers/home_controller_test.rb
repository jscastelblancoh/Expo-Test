require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  def test_show
    get "/"
    assert_response :success
  end

end
