class ApplicationsController < ApplicationController
  before_action :authenticater_user!
end
