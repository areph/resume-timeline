class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
  end

  def js_test
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user_params = params.require(:user)
                        .permit(:name,
                                :email,
                                :skill,
                                :pr)

    if @user = User.create(user_params)
      redirect_to '/users/index' #ブラウザにリダイレクトよろしく
    else
      render 'new' # viewを借りるよ
    end
  end

  def edit
  end
end
