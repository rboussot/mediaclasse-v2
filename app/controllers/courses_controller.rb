class CoursesController < ApplicationController

  def litterature
    @litterature = Course.where(tag:"litterature")
  end

  def technique
    @technique = Course.where(tag:"technique")
  end

end
