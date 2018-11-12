class ZonasController < ApplicationController
  before_action :set_zona, only: [:show, :update, :destroy]
  #before_action :authenticate_user
  # GET /zonas
  def index
    @zonas = Zona.all

    render json: @zonas
  end

  # GET /zonas/1
  def show
    render json: @zona
  end

  # POST /zonas
  def create
    @zona = Zona.new(zona_params)

    if @zona.save
      render json: @zona, status: :created, location: @zona
    else
      render json: @zona.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /zonas/1
  def update
    if @zona.update(zona_params)
      render json: @zona
    else
      render json: @zona.errors, status: :unprocessable_entity
    end
  end

  # DELETE /zonas/1
  def destroy
    @zona.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zona
      @zona = Zona.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def zona_params
      params.permit(:nombre, :direccion, :localidad)
    end
end
