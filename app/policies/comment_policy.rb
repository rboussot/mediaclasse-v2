class CommentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true  # Anyone can view all comments
  end

  def show?
    true  # Anyone can view a comment
  end

  def create?
    true  # Anyone can create a comment
  end

  def update?
    user.admin  # Only comment author can update it
  end

  def destroy?
    record.user == user || user.admin # Only comment author can update it
  end
end
