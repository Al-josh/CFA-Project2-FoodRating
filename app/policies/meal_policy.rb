class MealPolicy < ApplicationPolicy
  attr_reader :user, :meal

  def initialize(user, meal)
    @user = user
    @meal = meal

    def admin?
      has_role?(:admin)
    end


  end

  def create?
    @meal.restaurant.user == @user
  end

  def update?
    @meal.restaurant.user == @user || @user.admin?
  end

  def destroy?
    @meal.restaurant.user == @user || @user.admin?
  end


  class Scope < Scope
    def resolve
      scope
    end
  end
end
