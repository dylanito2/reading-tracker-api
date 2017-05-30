class V1::StudentsController < ApplicationController

  def index
    classroom = Classroom.find(params[:classroom_id])
    if classroom
      students = classroom.students
      render json: students, each_serializer: V1::StudentSerializer
    else
      render json: "No classroom found with this ID", status: 401
    end
  end

  def show
    student = Student.find(params[:id])
    if student
      render json: student, include: '**', serializer: V1::StudentSerializer
    else
      render json: "No student found with this ID", status: 401
    end
  end

  def fuzzy_search
    search_term = params["query"]
    students = Student.where('first_name LIKE ?', "%#{search_term}%").limit(10)
    if students
      render json: students, each_serializer: V1::StudentSerializer
    else
      render json: "No matches found", status: 401
    end
  end

end
