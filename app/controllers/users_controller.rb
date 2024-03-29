class UsersController < ApplicationController

      def create
        user = User.new(name: params[:name], email: params[:email], age: params[:age], password: params[:password])
        user.save!
        payload = { user_id: user.id }
        token = issue_token(payload)
        render json: { jwt: token }
      rescue ActiveRecord::RecordInvalid => invalid
        render json: {error: invalid.record.errors}
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
        params.require(:user).permit(:name, :email, :age, :password)
      end
end
