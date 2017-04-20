class MealPolicy < ApplicationPolicy
  attr_reader :user, :meal

  def initialize(user, meal)
    @user = user
    @meal = meal
  end

  def update?
    @meal.restaurant.user == @user
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
