require 'test_helper'

class ObjectsInfosControllerTest < ActionController::TestCase
  setup do
    @objects_info = objects_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:objects_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create objects_info" do
    assert_difference('ObjectsInfo.count') do
      post :create, objects_info: { obj_adress: @objects_info.obj_adress, obj_area_square: @objects_info.obj_area_square, obj_info: @objects_info.obj_info, obj_name: @objects_info.obj_name, obj_price: @objects_info.obj_price, obj_room_num: @objects_info.obj_room_num, obj_type: @objects_info.obj_type }
    end

    assert_redirected_to objects_info_path(assigns(:objects_info))
  end

  test "should show objects_info" do
    get :show, id: @objects_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @objects_info
    assert_response :success
  end

  test "should update objects_info" do
    put :update, id: @objects_info, objects_info: { obj_adress: @objects_info.obj_adress, obj_area_square: @objects_info.obj_area_square, obj_info: @objects_info.obj_info, obj_name: @objects_info.obj_name, obj_price: @objects_info.obj_price, obj_room_num: @objects_info.obj_room_num, obj_type: @objects_info.obj_type }
    assert_redirected_to objects_info_path(assigns(:objects_info))
  end

  test "should destroy objects_info" do
    assert_difference('ObjectsInfo.count', -1) do
      delete :destroy, id: @objects_info
    end

    assert_redirected_to objects_infos_path
  end
end
