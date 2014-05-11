class UsersController < ApplicationController

 def create
    #render plain: params[:article].inspect
   @user = User.new(user_params)
   if @user.save
     redirect_to @user
    else
      render 'new'
    end
  end

def new
  @user = User.new
end
  
 def show
   @user = User.find(params[:id])
  end
  
  
   def edit
     @user = User.find(params[:id])
  end
private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:avatar)
end

end
