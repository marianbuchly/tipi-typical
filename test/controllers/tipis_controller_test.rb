require 'test_helper'

class TipisControllerTest < ActionController::TestCase
  setup do
    @tipi = tipis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipi" do
    assert_difference('Tipi.count') do
      post :create, tipi: { description: @tipi.description, image: @tipi.image, location: @tipi.location, persons: @tipi.persons, price: @tipi.price, title: @tipi.title }
    end

    assert_redirected_to tipi_path(assigns(:tipi))
  end

  test "should show tipi" do
    get :show, id: @tipi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipi
    assert_response :success
  end

  test "should update tipi" do
    patch :update, id: @tipi, tipi: { description: @tipi.description, image: @tipi.image, location: @tipi.location, persons: @tipi.persons, price: @tipi.price, title: @tipi.title }
    assert_redirected_to tipi_path(assigns(:tipi))
  end

  test "should destroy tipi" do
    assert_difference('Tipi.count', -1) do
      delete :destroy, id: @tipi
    end

    assert_redirected_to tipis_path
  end
end
