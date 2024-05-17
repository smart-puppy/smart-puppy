class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about_us, :get_in_touch, :cookies_preferences, :privacy_policy]

  def home
  end

  def dashboard
    @user = current_user
    @jobs = @user.jobs if @user
    @resumes = @user.resumes if @user
  end

  def my_jobs
    @user = current_user
    @jobs = @user.jobs if @user
  end

  def my_resumes
    @user = current_user
    @resumes = @user.resumes if @user
  end

  def about_us
  end

  def get_in_touch
  end

  def cookies_preferences
  end

  def privacy_policy
  end
end
