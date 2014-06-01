require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get languages" do
    get :languages
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get forum" do
    get :forum
    assert_response :success
  end

  test "should get rules" do
    get :rules
    assert_response :success
  end

  test "should get contacts" do
    get :contacts
    assert_response :success
  end

end
