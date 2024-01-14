class PagesController < ApplicationController
  def landing
    redirect_to(action: :home, params: request.query_parameters) if user_signed_in?
  end

  def home
    redirect_to(action: :landing, params: request.query_parameters) unless user_signed_in?
  end
end
