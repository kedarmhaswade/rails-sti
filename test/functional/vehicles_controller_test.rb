require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Vehicle.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Vehicle.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Vehicle.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to vehicle_url(assigns(:vehicle))
  end

  def test_edit
    get :edit, :id => Vehicle.first
    assert_template 'edit'
  end

  def test_update_invalid
    Vehicle.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Vehicle.first
    assert_template 'edit'
  end

  def test_update_valid
    Vehicle.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Vehicle.first
    assert_redirected_to vehicle_url(assigns(:vehicle))
  end

  def test_destroy
    vehicle = Vehicle.first
    delete :destroy, :id => vehicle
    assert_redirected_to vehicles_url
    assert !Vehicle.exists?(vehicle.id)
  end
end
