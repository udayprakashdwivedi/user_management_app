# class Users::RegistrationsController < Devise::RegistrationsController
#     respond_to :json
  
#     private
  
#     def respond_with(resource, _opts = {})
#       render json: { message: 'User created successfully', user: resource }, status: :ok
#     end
  
#     def sign_up_params
#       params.require(:user).permit(:email, :password, :password_confirmation, :role_id)
#     end
#   end
  



class Users::RegistrationsController < Devise::RegistrationsController
    respond_to :json
  
    def create
      user = User.new(sign_up_params)
  
      if user.save
        render json: {
          message: "User created successfully",
          user: {
            id: user.id,
            email: user.email,
            created_at: user.created_at,
            updated_at: user.updated_at,
            role_id: user.role_id
          }
        }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    def sign_up_params
      params.require(:user).permit(:email, :password, :password_confirmation, :role_id)
    end
  end
  