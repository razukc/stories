class SignupsController < ApplicationController
  def new
    @signup = Signup.new
  end
  
  def create
    @signup = Signup.new(signup_params)
    if @signup.save
      redirect_to 'thanks'
    else
      redirect_to 'signups/new'
    end
  private 
  def signup_params
    require(:signup).permit(:firstname, :email)
  end
end
