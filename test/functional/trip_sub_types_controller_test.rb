require 'test_helper'

class TripSubTypesControllerTest < ActionController::TestCase
  setup do
    @trip_sub_type = trip_sub_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trip_sub_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trip_sub_type" do
    assert_difference('TripSubType.count') do
      post :create, trip_sub_type: { subtype: @trip_sub_type.subtype }
    end

    assert_redirected_to trip_sub_type_path(assigns(:trip_sub_type))
  end

  test "should show trip_sub_type" do
    get :show, id: @trip_sub_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trip_sub_type
    assert_response :success
  end

  test "should update trip_sub_type" do
    put :update, id: @trip_sub_type, trip_sub_type: { subtype: @trip_sub_type.subtype }
    assert_redirected_to trip_sub_type_path(assigns(:trip_sub_type))
  end

  test "should destroy trip_sub_type" do
    assert_difference('TripSubType.count', -1) do
      delete :destroy, id: @trip_sub_type
    end

    assert_redirected_to trip_sub_types_path
  end
end
