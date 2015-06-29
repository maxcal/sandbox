class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  def index
    @users = User.all
  end

  # GET /users/1
  def show
  end

  # GET /users/new
  def new
    @user = User.new
    Role::AVAILABLE_ROLES.each do |role|
      @user.roles.build(name: role)
    end
  end

  # GET /users/1/edit
  def edit
    Role::AVAILABLE_ROLES.each do |role|
      @user.roles.build(name: role) unless @user.has_role?(role)
    end
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(update_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:username, :email, roles_attributes: [:name, :id, :_keep, :_destroy])
    end

    def update_params
      user_params.tap do |o|
        # Adds the _delete attribute if
        o[:roles_attributes] = o[:roles_attributes].map do |k,h|
          attrs = h.merge(_destroy: (h[:_keep] != "1"))
          h.key?(:id) ? attrs.except(:name) : attrs
        end
      end
    end
end
