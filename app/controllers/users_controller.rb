class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    if user_signed_in?
        redirect_to current_user
    else
      redirect_to root_url
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    if !user_signed_in?
      redirect_to root_url
    elsif current_user.id != params[:id].to_i
      redirect_to current_user
    end 
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)    
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


   def update_location
    if user_signed_in?
      current_user.latitude = params[:latitude]
      current_user.longitude = params[:longitude]
      current_user.location = params[:location]
      current_user.save!
    end
    render nothing: true
   end


    def changeVisibility
      if user_signed_in?
        current_user.visible  = params[:visibility]
        current_user.save!
        render nothing: true
      else
        redirect_to root_url
      end
    end


    def color_status
      if user_signed_in?
        curr = User.find(current_user.id)
        curr.color_status = params[:color_status]
        curr.save!
        render nothing: true
      else
        redirect_to root_url
      end
    end
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if user_signed_in?
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to @user, notice: 'User was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to root_url
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
