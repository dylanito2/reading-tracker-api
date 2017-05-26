class V1::StudentsReadingLevelsController < ApplicationController

  def index
    student = Student.find(params[:student_id])
    if student
      reading_levels = student.calculate_reading_level_objects
      render json: reading_levels
    else
      render json: "No student found with this ID", status: 401
    end
  end

end
