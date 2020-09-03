require 'test_helper'

class VirusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get virus_index_url
    assert_response :success
  end

end
