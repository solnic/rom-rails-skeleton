class UsersController < ApplicationController
  def show
    repo = MyApp.instance.container['repositories.users']
    @user = repo[params[:id]]
  end

  def new
    @user = UserForm.build
  end

  def create
    @user = UserForm.build(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
