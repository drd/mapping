require 'test_helper'

class OutcomeMappingsControllerTest < ActionController::TestCase
  setup do
    @outcome_mapping = outcome_mappings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outcome_mappings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outcome_mapping" do
    assert_difference('OutcomeMapping.count') do
      post :create, outcome_mapping: @outcome_mapping.attributes
    end

    assert_redirected_to outcome_mapping_path(assigns(:outcome_mapping))
  end

  test "should show outcome_mapping" do
    get :show, id: @outcome_mapping.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outcome_mapping.to_param
    assert_response :success
  end

  test "should update outcome_mapping" do
    put :update, id: @outcome_mapping.to_param, outcome_mapping: @outcome_mapping.attributes
    assert_redirected_to outcome_mapping_path(assigns(:outcome_mapping))
  end

  test "should destroy outcome_mapping" do
    assert_difference('OutcomeMapping.count', -1) do
      delete :destroy, id: @outcome_mapping.to_param
    end

    assert_redirected_to outcome_mappings_path
  end
end
