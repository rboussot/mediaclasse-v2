class CoursesController < ApplicationController

  def litterature
    # attention a modifier l'id
    @litterature = Course.where(category_id: 1)
    # @litterature = Course.where(category: "litterature")
    # Course n'a pas de category juste un category_id
    # seules les categories ont un name
  end

  def technique
    # attention a modifier l'id
    @technique = Course.where(category_id: 4)
  end

end
