require 'test_helper'

class StudyCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @study_category = study_categories(:one)
  end

  test "should get index" do
    get study_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_study_category_url
    assert_response :success
  end

  test "should create study_category" do
    assert_difference('StudyCategory.count') do
      post study_categories_url, params: { study_category: { title: @study_category.title } }
    end

    assert_redirected_to study_category_url(StudyCategory.last)
  end

  test "should show study_category" do
    get study_category_url(@study_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_study_category_url(@study_category)
    assert_response :success
  end

  test "should update study_category" do
    patch study_category_url(@study_category), params: { study_category: { title: @study_category.title } }
    assert_redirected_to study_category_url(@study_category)
  end

  test "should destroy study_category" do
    assert_difference('StudyCategory.count', -1) do
      delete study_category_url(@study_category)
    end

    assert_redirected_to study_categories_url
  end
end
