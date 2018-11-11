require "application_system_test_case"

class WatsonsTest < ApplicationSystemTestCase
  setup do
    @watson = watsons(:one)
  end

  test "visiting the index" do
    visit watsons_url
    assert_selector "h1", text: "Watsons"
  end

  test "creating a Watson" do
    visit watsons_url
    click_on "New Watson"

    click_on "Create Watson"

    assert_text "Watson was successfully created"
    click_on "Back"
  end

  test "updating a Watson" do
    visit watsons_url
    click_on "Edit", match: :first

    click_on "Update Watson"

    assert_text "Watson was successfully updated"
    click_on "Back"
  end

  test "destroying a Watson" do
    visit watsons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Watson was successfully destroyed"
  end
end
