class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #Method to save a user to the databse runs validations first.
    @user = User.new(user_params)
    respond_to do |format|
      puts "This Is the Variable: #{@user}"
      puts "This Should Be The Params: #{params}"
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to root_url, notice: "Thank You For Signing Up" }
        format.json { render json: @user, status: :created }
      else
        format.html { render :new }
        format.json { render json: @user.errors}
      end
    end
  end

  # A method to white list the parameters that are sent to server.
  def user_params
    params.require(:user).permit(:name, :email, :password_hash, :username, :password_salt)
  end

end
