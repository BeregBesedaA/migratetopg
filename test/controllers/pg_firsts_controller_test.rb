require 'test_helper'

class PgFirstsControllerTest < ActionController::TestCase
  setup do
    @pg_first = pg_firsts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pg_firsts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pg_first" do
    assert_difference('PgFirst.count') do
      post :create, pg_first: { name: @pg_first.name }
    end

    assert_redirected_to pg_first_path(assigns(:pg_first))
  end

  test "should show pg_first" do
    get :show, id: @pg_first
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pg_first
    assert_response :success
  end

  test "should update pg_first" do
    patch :update, id: @pg_first, pg_first: { name: @pg_first.name }
    assert_redirected_to pg_first_path(assigns(:pg_first))
  end

  test "should destroy pg_first" do
    assert_difference('PgFirst.count', -1) do
      delete :destroy, id: @pg_first
    end

    assert_redirected_to pg_firsts_path
  end
end
