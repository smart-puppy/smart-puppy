class ResumesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_resume, only: [:show, :edit, :update, :destroy]

  def index
    @resumes = Resume.all
  end

  def show
  end

  def new
    @resume = Resume.new
  end

  def edit
  end

  def create
    @resume = Resume.new(resume_params)
    @resume.user = current_user

    if @resume.save
      redirect_to @resume, notice: 'Resume was successfully uploaded.'
    else
      render :new
    end

  end

end
