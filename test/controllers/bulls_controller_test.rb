require 'test_helper'

class BullsControllerTest < ActionController::TestCase
  setup do
    @bull = bulls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bulls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bull" do
    assert_difference('Bull.count') do
      post :create, bull: { dam: @bull.dam, dob: @bull.dob, name: @bull.name, scrotum: @bull.scrotum, sire: @bull.sire, tag: @bull.tag, weight: @bull.weight }
    end

    assert_redirected_to bull_path(assigns(:bull))
  end

  test "should show bull" do
    get :show, id: @bull
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bull
    assert_response :success
  end

  test "should update bull" do
    patch :update, id: @bull, bull: { dam: @bull.dam, dob: @bull.dob, name: @bull.name, scrotum: @bull.scrotum, sire: @bull.sire, tag: @bull.tag, weight: @bull.weight }
    assert_redirected_to bull_path(assigns(:bull))
  end

  test "should destroy bull" do
    assert_difference('Bull.count', -1) do
      delete :destroy, id: @bull
    end

    assert_redirected_to bulls_path
  end
end
