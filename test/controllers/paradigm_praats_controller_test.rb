require 'test_helper'

class ParadigmPraatsControllerTest < ActionController::TestCase
  setup do
    @paradigm_praat = paradigm_praats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paradigm_praats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paradigm_praat" do
    assert_difference('ParadigmPraat.count') do
      post :create, paradigm_praat: { description: @paradigm_praat.description, paradigm_id: @paradigm_praat.paradigm_id }
    end

    assert_redirected_to paradigm_praat_path(assigns(:paradigm_praat))
  end

  test "should show paradigm_praat" do
    get :show, id: @paradigm_praat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paradigm_praat
    assert_response :success
  end

  test "should update paradigm_praat" do
    patch :update, id: @paradigm_praat, paradigm_praat: { description: @paradigm_praat.description, paradigm_id: @paradigm_praat.paradigm_id }
    assert_redirected_to paradigm_praat_path(assigns(:paradigm_praat))
  end

  test "should destroy paradigm_praat" do
    assert_difference('ParadigmPraat.count', -1) do
      delete :destroy, id: @paradigm_praat
    end

    assert_redirected_to paradigm_praats_path
  end
end
