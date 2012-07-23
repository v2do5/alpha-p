require 'test_helper'

class PagesTextsControllerTest < ActionController::TestCase
  setup do
    @pages_text = pages_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pages_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pages_text" do
    assert_difference('PagesText.count') do
      post :create, pages_text: { page_name: @pages_text.page_name, page_text: @pages_text.page_text }
    end

    assert_redirected_to pages_text_path(assigns(:pages_text))
  end

  test "should show pages_text" do
    get :show, id: @pages_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pages_text
    assert_response :success
  end

  test "should update pages_text" do
    put :update, id: @pages_text, pages_text: { page_name: @pages_text.page_name, page_text: @pages_text.page_text }
    assert_redirected_to pages_text_path(assigns(:pages_text))
  end

  test "should destroy pages_text" do
    assert_difference('PagesText.count', -1) do
      delete :destroy, id: @pages_text
    end

    assert_redirected_to pages_texts_path
  end
end
