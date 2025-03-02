require "test_helper"

class TriviasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trivias_index_url
    assert_response :success
  end
end
