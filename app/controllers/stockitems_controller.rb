class StockitemsController < ApplicationController
  before_action :set_stockitem, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  
  # GET /stockitems or /stockitems.json
  def index
    @stockitems = Stockitem.all
  end

  # GET /stockitems/1 or /stockitems/1.json
  def show
  end

  # GET /stockitems/new
  def new
    @stockitem = Stockitem.new
  end

  # GET /stockitems/1/edit
  def edit
  end

  # POST /stockitems or /stockitems.json
  def create
    @stockitem = Stockitem.new(stockitem_params)

    respond_to do |format|
      if @stockitem.save
        format.html { redirect_to stockitems_path, notice: "Stockitem was successfully created." }
        format.json { render :show, status: :created, location: @stockitem }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stockitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stockitems/1 or /stockitems/1.json
  def update
    respond_to do |format|
      if @stockitem.update(stockitem_params)
        format.html { redirect_to stockitem_url(@stockitem), notice: "Stockitem was successfully updated." }
        format.json { render :show, status: :ok, location: @stockitem }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stockitem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stockitems/1 or /stockitems/1.json
  def destroy
    @stockitem.destroy
    respond_to do |format|
      format.html { redirect_to stockitems_url, notice: "Stockitem was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stockitem
      @stockitem = Stockitem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stockitem_params
      params.require(:stockitem).permit(:name, :quantity, :purchase_date, :expiration_date)
    end
end
