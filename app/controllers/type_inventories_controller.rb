class TypeInventoriesController < ApplicationController
  before_action :set_type_inventory, only: %i[ show edit update destroy ]

  # GET /type_inventories or /type_inventories.json
  def index
    @type_inventories = TypeInventory.all
  end

  # GET /type_inventories/1 or /type_inventories/1.json
  def show
  end

  # GET /type_inventories/new
  def new
    @type_inventory = TypeInventory.new
  end

  # GET /type_inventories/1/edit
  def edit
  end

  # POST /type_inventories or /type_inventories.json
  def create
    @type_inventory = TypeInventory.new(type_inventory_params)

    respond_to do |format|
      if @type_inventory.save
        format.html { redirect_to type_inventory_url(@type_inventory), notice: "Type inventory was successfully created." }
        format.json { render :show, status: :created, location: @type_inventory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @type_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_inventories/1 or /type_inventories/1.json
  def update
    respond_to do |format|
      if @type_inventory.update(type_inventory_params)
        format.html { redirect_to type_inventory_url(@type_inventory), notice: "Type inventory was successfully updated." }
        format.json { render :show, status: :ok, location: @type_inventory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @type_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_inventories/1 or /type_inventories/1.json
  def destroy
    @type_inventory.destroy

    respond_to do |format|
      format.html { redirect_to type_inventories_url, notice: "Type inventory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_inventory
      @type_inventory = TypeInventory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def type_inventory_params
      params.require(:type_inventory).permit(:gym_id, :name, :description)
    end
end
