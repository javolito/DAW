class CompraventaController < ApplicationController
  before_action :set_compraventum, only: [:show, :edit, :update, :destroy]

  # GET /compraventa
  # GET /compraventa.json
  def index
    @compraventa = Compraventum.all
  end

  # GET /compraventa/1
  # GET /compraventa/1.json
  def show
  end

  # GET /compraventa/new
  def new
    @compraventum = Compraventum.new
  end

  # GET /compraventa/1/edit
  def edit
  end

  # POST /compraventa
  # POST /compraventa.json
  def create
    @compraventum = Compraventum.new(compraventum_params)

    respond_to do |format|
      if @compraventum.save
        format.html { redirect_to @compraventum, notice: 'Compraventum was successfully created.' }
        format.json { render :show, status: :created, location: @compraventum }
      else
        format.html { render :new }
        format.json { render json: @compraventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /compraventa/1
  # PATCH/PUT /compraventa/1.json
  def update
    respond_to do |format|
      if @compraventum.update(compraventum_params)
        format.html { redirect_to @compraventum, notice: 'Compraventum was successfully updated.' }
        format.json { render :show, status: :ok, location: @compraventum }
      else
        format.html { render :edit }
        format.json { render json: @compraventum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /compraventa/1
  # DELETE /compraventa/1.json
  def destroy
    @compraventum.destroy
    respond_to do |format|
      format.html { redirect_to compraventa_url, notice: 'Compraventum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_compraventum
      @compraventum = Compraventum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def compraventum_params
      params.require(:compraventum).permit(:id_coche, :comprador, :fecha_publicacion, :fecha_compra, :precio)
    end
end
