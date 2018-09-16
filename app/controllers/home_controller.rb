class HomeController < ApplicationController
  before_action :authenticate_usere!
  def index
    @users = Usere.all
  end

  def edit
    @users = Usere.find(params[:id])
  end

  def update
   @users = Usere.find(params[:id])
   @users.update(params.require(:usere).permit(:email, :encrypted_password))
   if @users.save
   redirect_to action:'index'
   end
  end
end
