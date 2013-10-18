require 'test_helper'

class ParadigmsControllerTest < ActionController::TestCase
  setup do
    @paradigm = paradigms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paradigms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paradigm" do
    assert_difference('Paradigm.count') do
      post :create, paradigm: { transcription: @paradigm.transcription, translation: @paradigm.translation, word: @paradigm.word, word_id: @paradigm.word_id }
    end

    assert_redirected_to paradigm_path(assigns(:paradigm))
  end

  test "should show paradigm" do
    get :show, id: @paradigm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paradigm
    assert_response :success
  end

  test "should update paradigm" do
    patch :update, id: @paradigm, paradigm: { transcription: @paradigm.transcription, translation: @paradigm.translation, word: @paradigm.word, word_id: @paradigm.word_id }
    assert_redirected_to paradigm_path(assigns(:paradigm))
  end

  test "should destroy paradigm" do
    assert_difference('Paradigm.count', -1) do
      delete :destroy, id: @paradigm
    end

    assert_redirected_to paradigms_path
  end
end
