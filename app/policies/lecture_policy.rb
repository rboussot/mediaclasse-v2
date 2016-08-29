class LecturePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def watch_video?
    record.payment == false # TODO: OU user a payé
  end
end
