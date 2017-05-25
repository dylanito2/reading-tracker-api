class V1::CommentsController < ApplicationController

  def create
    student = Student.find(params[:student_id])
    if student
      comment = Comment.new(comment_params)
      if comment.save
        render json: student, serializer: V1::StudentSerializer
      else
        render json: "Unable to save post", status: 401
      end
    else
      render json: "Invalid Student", status: 401
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :student_id, :teacher_id)
  end

end
