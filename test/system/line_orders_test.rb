require "application_system_test_case"

class LineOrdersTest < ApplicationSystemTestCase
  setup do
    @line_order = line_orders(:one)
  end

  test "visiting the index" do
    visit line_orders_url
    assert_selector "h1", text: "Line Orders"
  end

  test "creating a Line order" do
    visit line_orders_url
    click_on "New Line Order"

    click_on "Create Line order"

    assert_text "Line order was successfully created"
    click_on "Back"
  end

  test "updating a Line order" do
    visit line_orders_url
    click_on "Edit", match: :first

    click_on "Update Line order"

    assert_text "Line order was successfully updated"
    click_on "Back"
  end

  test "destroying a Line order" do
    visit line_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Line order was successfully destroyed"
  end
end
