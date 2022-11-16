require "test_helper"

class ProducsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produc = producs(:one)
  end

  test "should get index" do
    get producs_url
    assert_response :success
  end

  test "should get new" do
    get new_produc_url
    assert_response :success
  end

  test "should create produc" do
    assert_difference("Produc.count") do
      post producs_url, params: { produc: { name: @produc.name } }
    end

    assert_redirected_to produc_url(Produc.last)
  end

  test "should show produc" do
    get produc_url(@produc)
    assert_response :success
  end

  test "should get edit" do
    get edit_produc_url(@produc)
    assert_response :success
  end

  test "should update produc" do
    patch produc_url(@produc), params: { produc: { name: @produc.name } }
    assert_redirected_to produc_url(@produc)
  end

  test "should destroy produc" do
    assert_difference("Produc.count", -1) do
      delete produc_url(@produc)
    end

    assert_redirected_to producs_url
  end
end
