require 'test_helper'

class ParadigmSoundsControllerTest < ActionController::TestCase
  setup do
    @paradigm_sound = paradigm_sounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paradigm_sounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paradigm_sound" do
    assert_difference('ParadigmSound.count') do
      post :create, paradigm_sound: { description: @paradigm_sound.description, paradigm_id: @paradigm_sound.paradigm_id }
    end

    assert_redirected_to paradigm_sound_path(assigns(:paradigm_sound))
  end

  test "should show paradigm_sound" do
    get :show, id: @paradigm_sound
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paradigm_sound
    assert_response :success
  end

  test "should update paradigm_sound" do
    patch :update, id: @paradigm_sound, paradigm_sound: { description: @paradigm_sound.description, paradigm_id: @paradigm_sound.paradigm_id }
    assert_redirected_to paradigm_sound_path(assigns(:paradigm_sound))
  end

  test "should destroy paradigm_sound" do
    assert_difference('ParadigmSound.count', -1) do
      delete :destroy, id: @paradigm_sound
    end

    assert_redirected_to paradigm_sounds_path
  end
end
