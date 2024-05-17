class ApplicationsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @application = Application.new
  end

  def create
    @application = Application.new(application_params)
    @application.user = current_user
    if @application.save
      redirect_to jobs_path(@job), notice: 'Application was successfully sent.'
    else
      render :new, status: :unprocessable_entity
    end
  end
end
