require 'test_helper'

class WordSoundsControllerTest < ActionController::TestCase
  setup do
    @word_sound = word_sounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:word_sounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word_sound" do
    assert_difference('WordSound.count') do
      post :create, word_sound: { description: @word_sound.description, word_id: @word_sound.word_id }
    end

    assert_redirected_to word_sound_path(assigns(:word_sound))
  end

  test "should show word_sound" do
    get :show, id: @word_sound
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word_sound
    assert_response :success
  end

  test "should update word_sound" do
    patch :update, id: @word_sound, word_sound: { description: @word_sound.description, word_id: @word_sound.word_id }
    assert_redirected_to word_sound_path(assigns(:word_sound))
  end

  test "should destroy word_sound" do
    assert_difference('WordSound.count', -1) do
      delete :destroy, id: @word_sound
    end

    assert_redirected_to word_sounds_path
  end
end
