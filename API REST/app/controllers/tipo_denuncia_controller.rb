class TipoDenunciaController < ApplicationController
  before_action :set_tipo_denuncium, only: [:show, :edit, :update, :destroy]

  # GET /tipo_denuncia
  # GET /tipo_denuncia.json
  def index
    @tipo_denuncia = TipoDenuncium.all
  end

  # GET /tipo_denuncia/1
  # GET /tipo_denuncia/1.json
  def show
  end

  # GET /tipo_denuncia/new
  def new
    @tipo_denuncium = TipoDenuncium.new
  end

  # GET /tipo_denuncia/1/edit
  def edit
  end

  # POST /tipo_denuncia
  # POST /tipo_denuncia.json
  def create
    @tipo_denuncium = TipoDenuncium.new(tipo_denuncium_params)

    respond_to do |format|
      if @tipo_denuncium.save
        format.html { redirect_to @tipo_denuncium, notice: 'Tipo denuncium was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_denuncium }
      else
        format.html { render :new }
        format.json { render json: @tipo_denuncium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_denuncia/1
  # PATCH/PUT /tipo_denuncia/1.json
  def update
    respond_to do |format|
      if @tipo_denuncium.update(tipo_denuncium_params)
        format.html { redirect_to @tipo_denuncium, notice: 'Tipo denuncium was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_denuncium }
      else
        format.html { render :edit }
        format.json { render json: @tipo_denuncium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_denuncia/1
  # DELETE /tipo_denuncia/1.json
  def destroy
    @tipo_denuncium.destroy
    respond_to do |format|
      format.html { redirect_to tipo_denuncia_url, notice: 'Tipo denuncium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_denuncium
      @tipo_denuncium = TipoDenuncium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_denuncium_params
      params.require(:tipo_denuncium).permit(:id, :nombre, :descripcion)
    end
end
