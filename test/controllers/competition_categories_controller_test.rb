require 'test_helper'

class CompetitionCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competition_category = competition_categories(:one)
  end

  test "should get index" do
    get competition_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_competition_category_url
    assert_response :success
  end

  test "should create competition_category" do
    assert_difference('CompetitionCategory.count') do
      post competition_categories_url, params: { competition_category: { name: @competition_category.name, number: @competition_category.number } }
    end

    assert_redirected_to competition_category_url(CompetitionCategory.last)
  end

  test "should show competition_category" do
    get competition_category_url(@competition_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_competition_category_url(@competition_category)
    assert_response :success
  end

  test "should update competition_category" do
    patch competition_category_url(@competition_category), params: { competition_category: { name: @competition_category.name, number: @competition_category.number } }
    assert_redirected_to competition_category_url(@competition_category)
  end

  test "should destroy competition_category" do
    assert_difference('CompetitionCategory.count', -1) do
      delete competition_category_url(@competition_category)
    end

    assert_redirected_to competition_categories_url
  end
end
