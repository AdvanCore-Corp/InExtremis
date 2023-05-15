class TypeUsersController < ApplicationController
  before_action :set_type_user, only: %i[ show edit update destroy ]

  # GET /type_users or /type_users.json
  def index
    @type_users = TypeUser.all
  end

  # GET /type_users/1 or /type_users/1.json
  def show
  end

  # GET /type_users/new
  def new
    @type_user = TypeUser.new
  end

  # GET /type_users/1/edit
  def edit
  end

  # POST /type_users or /type_users.json
  def create
    @type_user = TypeUser.new(type_user_params)

    respond_to do |format|
      if @type_user.save
        format.html { redirect_to type_user_url(@type_user), notice: "Type user was successfully created." }
        format.json { render :show, status: :created, location: @type_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_users/1 or /type_users/1.json
  def update
    respond_to do |format|
      if @type_user.update(type_user_params)
        format.html { redirect_to type_user_url(@type_user), notice: "Type user was successfully updated." }
        format.json { render :show, status: :ok, location: @type_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_users/1 or /type_users/1.json
  def destroy
    @type_user.destroy

    respond_to do |format|
      format.html { redirect_to type_users_url, notice: "Type user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_user
      @type_user = TypeUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_user_params
      params.require(:type_user).permit(:person_id, :name, :description)
    end
end
