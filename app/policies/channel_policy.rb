class ChannelPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true  # Anyone can view a channel
  end

  def create?
    true  # Anyone can create a channel
  end

  def update?
    record.user == user  # Only channel creator can update it
  end

  def destroy?
    record.user == user  # Only channel creator can update it
  end
end
