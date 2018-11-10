require "application_system_test_case"

class MessagewatsonsTest < ApplicationSystemTestCase
  setup do
    @messagewatson = messagewatsons(:one)
  end

  test "visiting the index" do
    visit messagewatsons_url
    assert_selector "h1", text: "Messagewatsons"
  end

  test "creating a Messagewatson" do
    visit messagewatsons_url
    click_on "New Messagewatson"

    click_on "Create Messagewatson"

    assert_text "Messagewatson was successfully created"
    click_on "Back"
  end

  test "updating a Messagewatson" do
    visit messagewatsons_url
    click_on "Edit", match: :first

    click_on "Update Messagewatson"

    assert_text "Messagewatson was successfully updated"
    click_on "Back"
  end

  test "destroying a Messagewatson" do
    visit messagewatsons_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Messagewatson was successfully destroyed"
  end
end
