class AuthController < ApplicationController

    def login
        user = User.find_by(username: user_params[:username])
        if user && user.authenticate(user_params[:password])
            payload = {user_id: user.id}
            token = JWT.encode(payload, secret, 'HS256')
            render json: {user:  user, token: token}
        else
            render json: {errors:  user.errors.full_messages} 
        end
    end

    def persist
        if request.headers['Authorization'] 
            ## 'bearer idfhdskfhkjdshfjkdsfhdsjkfhenwfjwdhnfuwe'
            token = request.headers['Authorization'].split(' ')[1]
            # [{user_id: 1}, {algorithm: 'H256'}]
            user_id = JWT.decode(token, secret, true, {algorithm: 'HS256'})[0]['user_id']
            user = User.find(user_id)
            render json: user
        end
    end

    private

    def user_params
        params.permit(:username, :password)
    end
end
