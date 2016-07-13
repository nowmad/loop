require 'test_helper'

class FacilitationsControllerTest < ActionController::TestCase
  setup do
    @facilitation = facilitations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:facilitations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create facilitation" do
    assert_difference('Facilitation.count') do
      post :create, facilitation: { facilitator_email: @facilitation.facilitator_email, title: @facilitation.title }
    end

    assert_redirected_to facilitation_path(assigns(:facilitation))
  end

  test "should show facilitation" do
    get :show, id: @facilitation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @facilitation
    assert_response :success
  end

  test "should update facilitation" do
    patch :update, id: @facilitation, facilitation: { facilitator_email: @facilitation.facilitator_email, title: @facilitation.title }
    assert_redirected_to facilitation_path(assigns(:facilitation))
  end

  test "should destroy facilitation" do
    assert_difference('Facilitation.count', -1) do
      delete :destroy, id: @facilitation
    end

    assert_redirected_to facilitations_path
  end
end
