class CoursesController < ApplicationController

  def litterature
    # attention a modifier l'id
    @litterature = Course.where(tag:"litterature")
    # @litterature = Course.
    # Course n'a pas de category juste un category_id
    # seules les categories ont un name
  end

  def technique
    # attention a modifier l'id
    @technique = Course.where(tag:"technique")
  end

end
