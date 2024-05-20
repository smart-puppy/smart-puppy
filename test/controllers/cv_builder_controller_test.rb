require "test_helper"

class CvBuilderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cv_builder_index_url
    assert_response :success
  end
end
