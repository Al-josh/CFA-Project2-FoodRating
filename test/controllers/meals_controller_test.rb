require 'test_helper'

class MealsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meal = meals(:one)
  end

  test "should get index" do
    get meals_url
    assert_response :success
  end

  test "should get new" do
    get new_meal_url
    assert_response :success
  end

  test "should create meal" do
    assert_difference('Meal.count') do
      post meals_url, params: { meal: { cuisine: @meal.cuisine, gluten_free: @meal.gluten_free, ingredients: @meal.ingredients, restaurant_id: @meal.restaurant_id, takeaway: @meal.takeaway, title: @meal.title, vegan: @meal.vegan, vegetarian: @meal.vegetarian } }
    end

    assert_redirected_to meal_url(Meal.last)
  end

  test "should show meal" do
    get meal_url(@meal)
    assert_response :success
  end

  test "should get edit" do
    get edit_meal_url(@meal)
    assert_response :success
  end

  test "should update meal" do
    patch meal_url(@meal), params: { meal: { cuisine: @meal.cuisine, gluten_free: @meal.gluten_free, ingredients: @meal.ingredients, restaurant_id: @meal.restaurant_id, takeaway: @meal.takeaway, title: @meal.title, vegan: @meal.vegan, vegetarian: @meal.vegetarian } }
    assert_redirected_to meal_url(@meal)
  end

  test "should destroy meal" do
    assert_difference('Meal.count', -1) do
      delete meal_url(@meal)
    end

    assert_redirected_to meals_url
  end
end
