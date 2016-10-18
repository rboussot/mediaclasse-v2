class LecturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def watch_video?
    record.payment == false || (user && !user.plan.blank?)
  end
end
