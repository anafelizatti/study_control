require 'test_helper'

class StudyItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_item = study_items(:one)
  end

  test "should get index" do
    get study_items_url
    assert_response :success
  end

  test "should get new" do
    get new_study_item_url
    assert_response :success
  end

  test "should create study_item" do
    assert_difference('StudyItem.count') do
      post study_items_url, params: { study_item: { category: @study_item.category, title: @study_item.title } }
    end

    assert_redirected_to study_item_url(StudyItem.last)
  end

  test "should show study_item" do
    get study_item_url(@study_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_item_url(@study_item)
    assert_response :success
  end

  test "should update study_item" do
    patch study_item_url(@study_item), params: { study_item: { category: @study_item.category, title: @study_item.title } }
    assert_redirected_to study_item_url(@study_item)
  end

  test "should destroy study_item" do
    assert_difference('StudyItem.count', -1) do
      delete study_item_url(@study_item)
    end

    assert_redirected_to study_items_url
  end
end
