require "application_system_test_case"

class SwapeopleTest < ApplicationSystemTestCase
  setup do
    @swaperson = swapeople(:one)
  end

  test "visiting the index" do
    visit swapeople_url
    assert_selector "h1", text: "Swapeople"
  end

  test "should create swaperson" do
    visit swapeople_url
    click_on "New swaperson"

    click_on "Create Swaperson"

    assert_text "Swaperson was successfully created"
    click_on "Back"
  end

  test "should update Swaperson" do
    visit swaperson_url(@swaperson)
    click_on "Edit this swaperson", match: :first

    click_on "Update Swaperson"

    assert_text "Swaperson was successfully updated"
    click_on "Back"
  end

  test "should destroy Swaperson" do
    visit swaperson_url(@swaperson)
    click_on "Destroy this swaperson", match: :first

    assert_text "Swaperson was successfully destroyed"
  end
end
