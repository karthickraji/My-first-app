require 'test_helper'

class AdvetsControllerTest < ActionController::TestCase
  setup do
    @advet = advets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advet" do
    assert_difference('Advet.count') do
      post :create, advet: { descripion: @advet.descripion, email: @advet.email, img_url: @advet.img_url, name: @advet.name, price: @advet.price, seller_id: @advet.seller_id }
    end

    assert_redirected_to advet_path(assigns(:advet))
  end

  test "should show advet" do
    get :show, id: @advet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advet
    assert_response :success
  end

  test "should update advet" do
    patch :update, id: @advet, advet: { descripion: @advet.descripion, email: @advet.email, img_url: @advet.img_url, name: @advet.name, price: @advet.price, seller_id: @advet.seller_id }
    assert_redirected_to advet_path(assigns(:advet))
  end

  test "should destroy advet" do
    assert_difference('Advet.count', -1) do
      delete :destroy, id: @advet
    end

    assert_redirected_to advets_path
  end
end
