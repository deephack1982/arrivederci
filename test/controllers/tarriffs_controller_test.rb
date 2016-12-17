require 'test_helper'

class TarriffsControllerTest < ActionController::TestCase
  setup do
    @tarriff = tarriffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tarriffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tarriff" do
    assert_difference('Tarriff.count') do
      post :create, tarriff: { name: @tarriff.name, price: @tarriff.price, service_id: @tarriff.service_id }
    end

    assert_redirected_to tarriff_path(assigns(:tarriff))
  end

  test "should show tarriff" do
    get :show, id: @tarriff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tarriff
    assert_response :success
  end

  test "should update tarriff" do
    patch :update, id: @tarriff, tarriff: { name: @tarriff.name, price: @tarriff.price, service_id: @tarriff.service_id }
    assert_redirected_to tarriff_path(assigns(:tarriff))
  end

  test "should destroy tarriff" do
    assert_difference('Tarriff.count', -1) do
      delete :destroy, id: @tarriff
    end

    assert_redirected_to tarriffs_path
  end
end
