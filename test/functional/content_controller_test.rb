require 'test_helper'

class ContentControllerTest < ActionController::TestCase
  setup do
    @content = content(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content" do
    assert_difference('Content.count') do
      post :create, content: @content.attributes
    end

    assert_redirected_to content_path(assigns(:content))
  end

  test "should show content" do
    get :show, id: @content.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content.to_param
    assert_response :success
  end

  test "should update content" do
    put :update, id: @content.to_param, content: @content.attributes
    assert_redirected_to content_path(assigns(:content))
  end

  test "should destroy content" do
    assert_difference('Content.count', -1) do
      delete :destroy, id: @content.to_param
    end

    assert_redirected_to content_index_path
  end
end
