class BlockchainsController < ApplicationController
  before_action :set_blockchain, only: [:show, :edit, :update, :destroy]
  # GET /blockchains
  # GET /blockchains.json
  def index
    @blockchains = Blockchain.all
  end

  # GET /blockchains/1
  # GET /blockchains/1.json
  def show
  end

  # GET /blockchains/new
  def new

  end

  # GET /blockchains/1/edit
  def edit
  end

  # POST /blockchains
  # POST /blockchains.json
  def create
    @blockchain = Blockchain.new(blockchain_params)

    respond_to do |format|
      if @blockchain.save
        format.html { redirect_to @blockchain, notice: 'Blockchain was successfully created.' }
        format.json { render :show, status: :created, location: @blockchain }
      else
        format.html { render :new }
        format.json { render json: @blockchain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blockchains/1
  # PATCH/PUT /blockchains/1.json
  def update
    respond_to do |format|
      if @blockchain.update(blockchain_params)
        format.html { redirect_to @blockchain, notice: 'Blockchain was successfully updated.' }
        format.json { render :show, status: :ok, location: @blockchain }
      else
        format.html { render :edit }
        format.json { render json: @blockchain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blockchains/1
  # DELETE /blockchains/1.json
  def destroy
    @blockchain.destroy
    respond_to do |format|
      format.html { redirect_to blockchains_url, notice: 'Blockchain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blockchain
      @blockchain = Blockchain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blockchain_params
      params.require(:blockchain).permit(:name, :email)
    end
end
