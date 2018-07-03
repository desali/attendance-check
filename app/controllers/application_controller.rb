class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include PagesHelper
  include CoursesHelper

  def index

  end

end
