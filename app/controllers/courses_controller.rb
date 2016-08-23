class CoursesController < ApplicationController

  def litterature
    @litterature = Course.all
  end

  # def technique
  #   @technique = Course.all
  # end
end
