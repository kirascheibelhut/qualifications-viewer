class QualificationsController < ApplicationController
  def index
    @qualifications = Qualification.all
  end

  def show
    @qualification = Qualification.find(params[:id])
    @subjects = @qualification.subjects
  end
end
