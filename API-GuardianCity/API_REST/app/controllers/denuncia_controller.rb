class DenunciaController < ApplicationController
  before_action :set_denuncium, only: [:show, :update, :destroy]
  #before_action :authenticate_user
  # GET /denuncia
  def index
    sql = "SELECT d.fecha as Fecha, d.direccion as Direccion, d.descripcion_asalto as Descripcion, d.descripcion_asaltante as Asaltante, z.nombre as Zona, t.nombre as TipoDenuncia FROM Denuncia as d, tipo_denuncia as t, zonas as z, usuarios as u WHERE d.zona_id=z.id AND d.tipo_denuncia_id=t.id and d.usuario_id=u.id"
    records_array = ActiveRecord::Base.connection.execute(sql)  
    @result = records_array.to_a;
    render json: @result
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
      params.permit(:fecha, :direccion, :descripcion_asalto, :descripcion_asaltante, :zona_id, :usuario_id, :tipo_denuncia_id)
    end
end
