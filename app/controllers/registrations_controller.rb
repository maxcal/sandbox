class RegistrationsController < Devise::RegistrationsController

  # GET /users/sign_up
  def new
    @user = User.new(company: Company.new)
  end

  def sign_up_params
    params.require(:user).permit(
      :email, :password, :password_confirmation,
      company_attributes: [:name]
    )
  end
end
