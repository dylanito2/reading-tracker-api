class V1::ConferencesController < ApplicationController

  def create
    student = Student.find(params[:student_id])
    byebug
    if student
      conference = Conference.new(conference_params)
      conference.reading_level = params[:reading_level]
      params[:comments].each do |comment|
        conference.comments << comment
      end
      if conference.save
        render json: student, serializer: V1::StudentSerializer
      else
        render json: "Unable to save conference", status: 401
      end
    else
      render json: "Invalid Student", status: 401
    end
  end

  private

  def conference_params
    params.require(:comment).permit(:student_id, :teacher_id)
  end

end
