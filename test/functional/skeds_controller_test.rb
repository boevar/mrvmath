require 'test_helper'

class SkedsControllerTest < ActionController::TestCase
  setup do
    @sked = skeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sked" do
    assert_difference('Sked.count') do
      post :create, :sked => @sked.attributes
    end

    assert_redirected_to sked_path(assigns(:sked))
  end

  test "should show sked" do
    get :show, :id => @sked.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sked.to_param
    assert_response :success
  end

  test "should update sked" do
    put :update, :id => @sked.to_param, :sked => @sked.attributes
    assert_redirected_to sked_path(assigns(:sked))
  end

  test "should destroy sked" do
    assert_difference('Sked.count', -1) do
      delete :destroy, :id => @sked.to_param
    end

    assert_redirected_to skeds_path
  end
end
