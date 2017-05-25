class V1::ClassroomsController < ApplicationController

  def index
    render json: Classroom.all
  end
end
