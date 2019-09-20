class UsersController < ApplicationController
  
    def create
        user = User.new(name: params[:name], email: params[:email], password: params[:password])
        if user.save
          payload = { user_id: user.id }
          token = issue_token(payload)
          render json: { jwt: token }
        else
          render json: { error: 'There was an error.' }
        end
      end

      def update
        user = User.find(params[:id])
        user.update(name: params[:name], email: params[:email])
        if user.update(name: params[:name], email: params[:email])
            render json: user
        else
            render json: { error: 'User was not updated'}
        end
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {message: 'deleted'}
    end
    
      private
    
      def user_params
        params.require(:user).permit(:name, :email, :password)
      end
end
