class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true  # Anyone can create a user
  end

  def update?
    record.id == user.id  # Only user creator can update its profile
  end

end
