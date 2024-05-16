class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

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

end
