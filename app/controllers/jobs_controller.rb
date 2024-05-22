class JobsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_business!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @per_page = (params[:per_page] || 10).to_i
    @query = params[:query]

    if @query.present?
      Rails.logger.debug "Search query: #{@query}"
      search_query = "%#{@query.downcase}%"
      @jobs = Job.where('LOWER(title) LIKE :query OR LOWER(company_name) LIKE :query OR LOWER(requirements) LIKE :query OR LOWER(description) LIKE :query OR LOWER(location) LIKE :query', query: search_query)
      Rails.logger.debug "Jobs found: #{@jobs.count}"
    else
      @jobs = Job.all
    end

    @jobs = @jobs.paginate(page: params[:page], per_page: @per_page)
  end

  def show
    # @applications = @job.applications
    @job = Job.find(params[:id])
    @applications = @job.applications.includes(:user) # Include user to avoid N+1 query problem
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
    redirect_to dashboard_path, notice: 'Job was successfully deleted.'
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :company_name, :requirements, :location, :skill_id, :photo)
  end

  def authenticate_business!
    unless current_user&.business?
      redirect_to jobs_path, alert: 'You are not authorized to edit this job.'
    end
  end
end
