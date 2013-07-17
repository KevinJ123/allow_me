class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end
  
  def create
    @signup = Signup.new(params[:signup])
    
    if @signup.save
      redirect_to ''
    else
      render 'new'
    end
  end
end
