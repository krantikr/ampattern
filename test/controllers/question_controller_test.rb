require 'test_helper'

class QuestionControllerTest < ActionController::TestCase
  test "should get question" do
    get :question
    assert_response :success
  end

end
