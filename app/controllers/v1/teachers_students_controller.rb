class V1::TeachersStudentsController < ApplicationController

  def index
    teacher = Teacher.find(params[:teacher_id])
    if teacher
      students = teacher.students
      render json: students, each_serializer: V1::StudentSerializer
    else
      render json: "No teacher found with this ID", status: 401
    end
  end

end
