require 'test_helper'

class TemplateControllerTest < ActionController::TestCase
  test "should get simple" do
    get :simple
    assert_response :success
  end

  test "should get complex" do
    get :complex
    assert_response :success
  end

end
