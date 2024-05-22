class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :get_in_touch, :cookies_preferences, :privacy_policy]

  def home
  end

  def dashboard
    @user = current_user
    if @user
      if @user.business?
        @jobs = @user.jobs.limit(6)
        @applications = Application.where(job: @jobs)
      else
        # @jobs = @user.applied_jobs.limit(6)
        @resumes = @user.resumes
      end
    end
  end


  def my_jobs
    @user = current_user
    @jobs = @user.applied_jobs
  end

  def my_resumes
    @user = current_user
    @resumes = @user.resumes
  end

  def about_us
  end

  def get_in_touch
  end

  def cookies_preferences
  end

  def privacy_policy
  end

  def users_dashboard
    @users = User.all
  end
end
