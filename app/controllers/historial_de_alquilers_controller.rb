class HistorialDeAlquilersController < ApplicationController
  before_action :set_historial_de_alquiler, only: [:show, :edit, :update, :destroy]

  # GET /historial_de_alquilers
  # GET /historial_de_alquilers.json
  def index
    @historial_de_alquilers = HistorialDeAlquiler.all
  end

  # GET /historial_de_alquilers/1
  # GET /historial_de_alquilers/1.json
  def show
  end

  # GET /historial_de_alquilers/new
  def new
    @historial_de_alquiler = HistorialDeAlquiler.new
  end

  # GET /historial_de_alquilers/1/edit
  def edit
  end

  # POST /historial_de_alquilers
  # POST /historial_de_alquilers.json
  def create
    @historial_de_alquiler = HistorialDeAlquiler.new(historial_de_alquiler_params)

    respond_to do |format|
      if @historial_de_alquiler.save
        format.html { redirect_to @historial_de_alquiler, notice: 'Historial de alquiler was successfully created.' }
        format.json { render :show, status: :created, location: @historial_de_alquiler }
      else
        format.html { render :new }
        format.json { render json: @historial_de_alquiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historial_de_alquilers/1
  # PATCH/PUT /historial_de_alquilers/1.json
  def update
    respond_to do |format|
      if @historial_de_alquiler.update(historial_de_alquiler_params)
        format.html { redirect_to @historial_de_alquiler, notice: 'Historial de alquiler was successfully updated.' }
        format.json { render :show, status: :ok, location: @historial_de_alquiler }
      else
        format.html { render :edit }
        format.json { render json: @historial_de_alquiler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historial_de_alquilers/1
  # DELETE /historial_de_alquilers/1.json
  def destroy
    @historial_de_alquiler.destroy
    respond_to do |format|
      format.html { redirect_to historial_de_alquilers_url, notice: 'Historial de alquiler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historial_de_alquiler
      @historial_de_alquiler = HistorialDeAlquiler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historial_de_alquiler_params
      params.require(:historial_de_alquiler).permit(:id_coche, :alquilador, :fecha_ini_alquiler, :fecha_fin_alquiler, :precio)
    end
end
