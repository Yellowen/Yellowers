module Dashboard
  class ProfileController < ApplicationController
    layout false
    # GET /sites/new
    def edit_password
      @user = ::Faalis::User.find(current_user.id)
      authorize @user
    end

    def update_password
      @user = ::Faalis::User.find(current_user.id)
      authorize @user
      respond_to do |f|
        if @user.update_with_password(resource_params)
          f.js
          f.html
        else
          f.js {render @user.errors}
          f.html
        end
      end
    end

    def resource_params
      params.require(:user).permit(:current_password, :password, :password_confirmation)
    end
  end
end
