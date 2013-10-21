require 'test_helper'

class WordPraatsControllerTest < ActionController::TestCase
  setup do
    @word_praat = word_praats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:word_praats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create word_praat" do
    assert_difference('WordPraat.count') do
      post :create, word_praat: { description: @word_praat.description, word_id: @word_praat.word_id }
    end

    assert_redirected_to word_praat_path(assigns(:word_praat))
  end

  test "should show word_praat" do
    get :show, id: @word_praat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @word_praat
    assert_response :success
  end

  test "should update word_praat" do
    patch :update, id: @word_praat, word_praat: { description: @word_praat.description, word_id: @word_praat.word_id }
    assert_redirected_to word_praat_path(assigns(:word_praat))
  end

  test "should destroy word_praat" do
    assert_difference('WordPraat.count', -1) do
      delete :destroy, id: @word_praat
    end

    assert_redirected_to word_praats_path
  end
end
