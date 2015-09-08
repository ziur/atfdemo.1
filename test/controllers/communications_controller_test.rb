require 'test_helper'

class CommunicationsControllerTest < ActionController::TestCase
  setup do
    @communication = communications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:communications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create communication" do
    assert_difference('Communication.count') do
      post :create, communication: { contact_id: @communication.contact_id, default: @communication.default, type: @communication.type, value: @communication.value }
    end

    assert_redirected_to communication_path(assigns(:communication))
  end

  test "should show communication" do
    get :show, id: @communication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @communication
    assert_response :success
  end

  test "should update communication" do
    patch :update, id: @communication, communication: { contact_id: @communication.contact_id, default: @communication.default, type: @communication.type, value: @communication.value }
    assert_redirected_to communication_path(assigns(:communication))
  end

  test "should destroy communication" do
    assert_difference('Communication.count', -1) do
      delete :destroy, id: @communication
    end

    assert_redirected_to communications_path
  end
end
