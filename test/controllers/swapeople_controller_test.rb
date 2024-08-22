require "test_helper"

class SwapeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swaperson = swapeople(:one)
  end

  test "should get index" do
    get swapeople_url
    assert_response :success
  end

  test "should get new" do
    get new_swaperson_url
    assert_response :success
  end

  test "should create swaperson" do
    assert_difference("Swaperson.count") do
      post swapeople_url, params: { swaperson: {} }
    end

    assert_redirected_to swaperson_url(Swaperson.last)
  end

  test "should show swaperson" do
    get swaperson_url(@swaperson)
    assert_response :success
  end

  test "should get edit" do
    get edit_swaperson_url(@swaperson)
    assert_response :success
  end

  test "should update swaperson" do
    patch swaperson_url(@swaperson), params: { swaperson: {} }
    assert_redirected_to swaperson_url(@swaperson)
  end

  test "should destroy swaperson" do
    assert_difference("Swaperson.count", -1) do
      delete swaperson_url(@swaperson)
    end

    assert_redirected_to swapeople_url
  end
end
