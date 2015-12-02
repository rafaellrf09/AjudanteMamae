require 'test_helper'

class BebesControllerTest < ActionController::TestCase
  setup do
    @bebe = bebes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bebes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bebe" do
    assert_difference('Bebe.count') do
      post :create, bebe: { idade: @bebe.idade, nome: @bebe.nome }
    end

    assert_redirected_to bebe_path(assigns(:bebe))
  end

  test "should show bebe" do
    get :show, id: @bebe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bebe
    assert_response :success
  end

  test "should update bebe" do
    patch :update, id: @bebe, bebe: { idade: @bebe.idade, nome: @bebe.nome }
    assert_redirected_to bebe_path(assigns(:bebe))
  end

  test "should destroy bebe" do
    assert_difference('Bebe.count', -1) do
      delete :destroy, id: @bebe
    end

    assert_redirected_to bebes_path
  end
end
