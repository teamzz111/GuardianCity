class DenunciaController < ApplicationController
  before_action :set_denuncium, only: [:show, :update, :destroy]

  # GET /denuncia
  def index
    @denuncia = Denuncium.all

    render json: @denuncia
  end

  # GET /denuncia/1
  def show
    render json: @denuncium
  end

  # POST /denuncia
  def create
    @denuncium = Denuncium.new(denuncium_params)

    if @denuncium.save
      render json: @denuncium, status: :created, location: @denuncium
    else
      render json: @denuncium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /denuncia/1
  def update
    if @denuncium.update(denuncium_params)
      render json: @denuncium
    else
      render json: @denuncium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /denuncia/1
  def destroy
    @denuncium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_denuncium
      @denuncium = Denuncium.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def denuncium_params
      params.require(:denuncium).permit(:fecha, :descripcion_asalto, :descripcion_asaltante, :zona_id, :usuario_id, :tipo_denuncia_id)
    end
end
