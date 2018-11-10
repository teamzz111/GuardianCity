require "ibm_watson"
include IBMWatson

class MessagewatsonsController < ApplicationController
  before_action :set_messagewatson, only: [:show]

  # GET /messagewatsons
  # GET /messagewatsons.json
  def index
    assistant = IBMWatson::AssistantV1.new(
        version: "XXX",
        username: "xxx",
        password: "xxx",
        url:"https://gateway.watsonplatform.net/assistant/api",
        iam_apikey: "xx"
    )
    response = assistant.message(
        workspace_id: "xxx",
        input: {
            text: "Hola"
        }
    )
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: response }

    end
  end

  # GET /messagewatsons/1
  # GET /messagewatsons/1.json
  def show
  end

  # GET /messagewatsons/new
  def new
    @messagewatson = Messagewatson.new
  end

  # GET /messagewatsons/1/edit
  def edit
  end

  # POST /messagewatsons
  # POST /messagewatsons.json
  def create
    @messagewatson = Messagewatson.new(messagewatson_params)

    respond_to do |format|
      if @messagewatson.save
        format.html { redirect_to @messagewatson, notice: 'Messagewatson was successfully created.' }
        format.json { render :show, status: :created, location: @messagewatson }
      else
        format.html { render :new }
        format.json { render json: @messagewatson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messagewatsons/1
  # PATCH/PUT /messagewatsons/1.json
  def update
    respond_to do |format|
      if @messagewatson.update(messagewatson_params)
        format.html { redirect_to @messagewatson, notice: 'Messagewatson was successfully updated.' }
        format.json { render :show, status: :ok, location: @messagewatson }
      else
        format.html { render :edit }
        format.json { render json: @messagewatson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messagewatsons/1
  # DELETE /messagewatsons/1.json
  def destroy
    @messagewatson.destroy
    respond_to do |format|
      format.html { redirect_to messagewatsons_url, notice: 'Messagewatson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messagewatson
      @messagewatson = Messagewatson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def messagewatson_params
      params.fetch(:messagewatson, {})
    end
end
