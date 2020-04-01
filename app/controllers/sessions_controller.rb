class SessionsController < ApplicationController
  def new
  end

  def create
    puts params
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login', alert: "Must enter a Username"
    else
      session[:name] = params[:name]
      redirect_to '/', alert: "Welcome"  
    end
  end

  def destroy
    session.delete :name
  end
end
