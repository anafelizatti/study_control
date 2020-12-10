require "application_system_test_case"

class StudyCategoriesTest < ApplicationSystemTestCase
  setup do
    @study_category = study_categories(:one)
  end

  test "visiting the index" do
    visit study_categories_url
    assert_selector "h1", text: "Study Categories"
  end

  test "creating a Study category" do
    visit study_categories_url
    click_on "New Study Category"

    fill_in "Title", with: @study_category.title
    click_on "Create Study category"

    assert_text "Study category was successfully created"
    click_on "Back"
  end

  test "updating a Study category" do
    visit study_categories_url
    click_on "Edit", match: :first

    fill_in "Title", with: @study_category.title
    click_on "Update Study category"

    assert_text "Study category was successfully updated"
    click_on "Back"
  end

  test "destroying a Study category" do
    visit study_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Study category was successfully destroyed"
  end
end
