require 'test_helper'

class PurposeDefsControllerTest < ActionController::TestCase
  setup do
    @purpose_def = purpose_defs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purpose_defs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purpose_def" do
    assert_difference('PurposeDef.count') do
      post :create, :purpose_def => @purpose_def.attributes
    end

    assert_redirected_to purpose_def_path(assigns(:purpose_def))
  end

  test "should show purpose_def" do
    get :show, :id => @purpose_def.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @purpose_def.to_param
    assert_response :success
  end

  test "should update purpose_def" do
    put :update, :id => @purpose_def.to_param, :purpose_def => @purpose_def.attributes
    assert_redirected_to purpose_def_path(assigns(:purpose_def))
  end

  test "should destroy purpose_def" do
    assert_difference('PurposeDef.count', -1) do
      delete :destroy, :id => @purpose_def.to_param
    end

    assert_redirected_to purpose_defs_path
  end
end
