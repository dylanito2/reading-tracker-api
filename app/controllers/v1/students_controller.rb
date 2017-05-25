class V1::StudentsController < ApplicationController

  def index
    classroom = Classroom.find(params[:classroom_id])
    byebug
    if classroom
      students = classroom.students
      render json: students, each_serializer: V1::StudentSerializer
    else
      render json: "No classroom found with this ID", status: 401
    end
  end

end
