class CommentPolicy < ApplicationPolicy
  attr_reader :user, :comment

  def initialize(user, comment)
    @user = user
    @comment = comment
  end


  def update?
      @comment.user == @user || @user.admin?
  end

  def destroy?
      @comment.user == @user || @user.admin?
  end


  class Scope < Scope
    def resolve
      scope
    end
  end
end
