class V1::ReadingLevelsController < ApplicationController

  def show
    student = Student.find(params[:id])
    if student
      reading_levels = student.calculate_reading_level_objects
      render json: reading_levels
    else
      render json: "No student found with this ID", status: 401
    end
  end

end
