class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
      end
    
      def new
        @user = User.new
      end
    
      def index
         @users = User.all
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
          flash[:success] = "ユーザ登録成功"
          redirect_to root_path
        else
          render 'new', status: :unprocessable_entity
        end
      end

    # 外部では使われないようにprivateでuser_paramsを定義する
      private
    
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
