require "application_system_test_case"

class StudyItemsTest < ApplicationSystemTestCase
  setup do
    @study_item = study_items(:one)
  end

  test "visiting the index" do
    visit study_items_url
    assert_selector "h1", text: "Study Items"
  end

  test "creating a Study item" do
    visit study_items_url
    click_on "New Study Item"

    fill_in "Category", with: @study_item.category
    fill_in "Title", with: @study_item.title
    click_on "Create Study item"

    assert_text "Study item was successfully created"
    click_on "Back"
  end

  test "updating a Study item" do
    visit study_items_url
    click_on "Edit", match: :first

    fill_in "Category", with: @study_item.category
    fill_in "Title", with: @study_item.title
    click_on "Update Study item"

    assert_text "Study item was successfully updated"
    click_on "Back"
  end

  test "destroying a Study item" do
    visit study_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Study item was successfully destroyed"
  end
end
