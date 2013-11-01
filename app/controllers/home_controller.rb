class HomeController < ApplicationController

  def index
    @posts = Post.order('created_at DESC')
  end

  def create_user 
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    
    if user.save
      redirect_to root_path, notice: 'Enjoy your spam!'
    else
      redirect_to root_path, notice: 'No spam for you!'
    end
  end

end
