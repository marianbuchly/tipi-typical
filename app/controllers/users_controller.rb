class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
     @user = User.new(user_params)

     if @user.save
       # Store the user in the session
       session[:user_id] = @user.id

       redirect_to root_path, notice: "Hi, #{@user.name}!"
     else
       render :new
     end
   end

private

  def user_params
    params.require(:user).permit(:name)
  end




  def index
  end

  def show
  end
end
