require "test_helper"

class LineOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_order = line_orders(:one)
  end

  test "should get index" do
    get line_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_line_order_url
    assert_response :success
  end

  test "should create line_order" do
    assert_difference('LineOrder.count') do
      post line_orders_url, params: { line_order: {  } }
    end

    assert_redirected_to line_order_url(LineOrder.last)
  end

  test "should show line_order" do
    get line_order_url(@line_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_order_url(@line_order)
    assert_response :success
  end

  test "should update line_order" do
    patch line_order_url(@line_order), params: { line_order: {  } }
    assert_redirected_to line_order_url(@line_order)
  end

  test "should destroy line_order" do
    assert_difference('LineOrder.count', -1) do
      delete line_order_url(@line_order)
    end

    assert_redirected_to line_orders_url
  end
end
