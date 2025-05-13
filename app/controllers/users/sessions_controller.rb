# class Users::SessionsController < Devise::SessionsController
#     respond_to :json
  
#     private
  
#     def respond_with(resource, _opts = {})
#       render json: { message: 'Logged in successfully', user: resource }, status: :ok
#     end
  
#     def respond_to_on_destroy
#       render json: { message: 'Logged out successfully' }, status: :ok
#     end
#   end
  


class Users::SessionsController < Devise::SessionsController
    respond_to :json
  
    private
  
    def respond_with(resource, _opts = {})
      render json: {
        message: 'Logged in successfully',
        user: {
          id: resource.id,
          email: resource.email,
          created_at: resource.created_at,
          updated_at: resource.updated_at,
          role_id: resource.role_id
        }
      }, status: :ok
    end
  
    def respond_to_on_destroy
      render json: { message: "Logged out" }, status: :ok
    end
  end
  