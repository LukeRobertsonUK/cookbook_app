require 'test_helper'

class MealCategoriesControllerTest < ActionController::TestCase
  setup do
    @meal_category = meal_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:meal_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create meal_category" do
    assert_difference('MealCategory.count') do
      post :create, meal_category: { name: @meal_category.name }
    end

    assert_redirected_to meal_category_path(assigns(:meal_category))
  end

  test "should show meal_category" do
    get :show, id: @meal_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @meal_category
    assert_response :success
  end

  test "should update meal_category" do
    put :update, id: @meal_category, meal_category: { name: @meal_category.name }
    assert_redirected_to meal_category_path(assigns(:meal_category))
  end

  test "should destroy meal_category" do
    assert_difference('MealCategory.count', -1) do
      delete :destroy, id: @meal_category
    end

    assert_redirected_to meal_categories_path
  end
end
