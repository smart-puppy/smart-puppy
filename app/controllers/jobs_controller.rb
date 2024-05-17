class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  # Is the below line correct? If not, what should it be?
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    @jobs = Job.all
    @per_page = (params[:per_page] || 10).to_i
    @jobs = Job.paginate(page: params[:page], per_page: @per_page)
  end

  def show
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def create
    @job = Job.new(job_params)
    @job.user = current_user
    if @job.save
      redirect_to job_path(@job), notice: 'Job was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @job.update(job_params)
      redirect_to job_path(@job), notice: 'Job was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @job.destroy
    redirect_to jobs_url, notice: 'Job was successfully destroyed.'
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :company_name, :requirements, :location, :skill_id)
  end
end
