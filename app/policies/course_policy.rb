class CoursePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def index?
    @scope = Scope.search(params[:search]).joins(:author).joins(:category).order('pseudo ASC')
  end
end
