require 'test_helper'

class QuizControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get question" do
    get :question
    assert_response :success
  end

  test "should get answer" do
    get :answer
    assert_response :success
  end

  test "should get end" do
    get :end
    assert_response :success
  end

end
