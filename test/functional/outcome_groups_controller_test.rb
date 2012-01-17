require 'test_helper'

class OutcomeGroupsControllerTest < ActionController::TestCase
  setup do
    @outcome_group = outcome_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outcome_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outcome_group" do
    assert_difference('OutcomeGroup.count') do
      post :create, outcome_group: @outcome_group.attributes
    end

    assert_redirected_to outcome_group_path(assigns(:outcome_group))
  end

  test "should show outcome_group" do
    get :show, id: @outcome_group.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outcome_group.to_param
    assert_response :success
  end

  test "should update outcome_group" do
    put :update, id: @outcome_group.to_param, outcome_group: @outcome_group.attributes
    assert_redirected_to outcome_group_path(assigns(:outcome_group))
  end

  test "should destroy outcome_group" do
    assert_difference('OutcomeGroup.count', -1) do
      delete :destroy, id: @outcome_group.to_param
    end

    assert_redirected_to outcome_groups_path
  end
end
