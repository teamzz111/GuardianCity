class TipoDenunciaController < ApplicationController
  before_action :set_tipo_denuncium, only: [:show, :update, :destroy]
  #before_action :authenticate_user
  # GET /tipo_denuncia
  def index
    @tipo_denuncia = TipoDenuncia.all

    render json: @tipo_denuncia
  end

  # GET /tipo_denuncia/1
  def show
    render json: @tipo_denuncium
  end

  # POST /tipo_denuncia
  def create
    @tipo_denuncium = TipoDenuncia.new(tipo_denuncium_params)

    if @tipo_denuncium.save
      render json: @tipo_denuncium, status: :created, location: @tipo_denuncium
    else
      render json: @tipo_denuncium.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tipo_denuncia/1
  def update
    if @tipo_denuncium.update(tipo_denuncium_params)
      render json: @tipo_denuncium
    else
      render json: @tipo_denuncium.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tipo_denuncia/1
  def destroy
    @tipo_denuncium.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_denuncium
      @tipo_denuncium = TipDenuncia.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tipo_denuncium_params
      params.permit(:nombre, :descripcion)
    end
end
