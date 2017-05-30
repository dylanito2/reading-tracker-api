class V1::ConferencesController < ApplicationController

  def create
    student = Student.find(params[:student_id])
    if student
      conference = Conference.new(conference_params)
      if conference.save
        conference.reading_level = ReadingLevel.create(score: params[:reading_level], conference_id: conference.id)
        params[:comments].each do |comment|
          Comment.create(text: comment, conference_id: conference.id)
        end
        render json: student, include: '**', serializer: V1::StudentSerializer
      else
        render json: "Unable to save conference", status: 401
      end
    else
      render json: "Invalid Student", status: 401
    end
  end

  private

  def conference_params
    params.require(:conference).permit(:student_id, :teacher_id)
  end

end
