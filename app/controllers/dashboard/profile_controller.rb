module Dashboard
  class ProfileController < ApplicationController
    layout false
    # GET /sites/new
    def edit_password
      @user = User.find(current_user.id)
      autorize @user
    end

    def update_password
      @user = User.find(current_user.id)
      if @user.update_with_password(params.require)
      end
    end

    def resource_params
      params.require(:profile).permis(:current_password, :password, :password_confirmation)
    end
  end
end
