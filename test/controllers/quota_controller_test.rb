require 'test_helper'

class QuotaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quota_index_url
    assert_response :success
  end

end
