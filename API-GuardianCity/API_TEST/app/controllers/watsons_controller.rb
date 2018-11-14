class WatsonsController < ApplicationController
  before_action :set_watson, only: [:show, :edit, :update, :destroy]

  # GET /watsons
  # GET /watsons.json
  def index
    params.permit(:message)

    assistant = IBMWatson::AssistantV1.new(
        version: "2018-09-20",
        username: "ebbfae24-aaba-403c-8f06-b11b5ae7ce81",
        password: "b7ij6FUSNHdt",
        url:"https://gateway.watsonplatform.net/assistant/api",
        iam_apikey: "XOIijyk6xzJeEmjeVlvnJHhGUomigWWu_xKo1WcMiIiz"
    )

    response = assistant.message(
        workspace_id: "98aec387-baa5-4161-a891-09cb44317cf3",
        input: {
            text: params[:message]
        }
    )
    @result = response.result
    render json: @result
  end

  # GET /watsons/1
  # GET /watsons/1.json
  def show
  end

  # GET /watsons/new
  def new
    @watson = Watson.new
  end

  # GET /watsons/1/edit
  def edit
  end

  # POST /watsons
  # POST /watsons.json
  def create
    @watson = Watson.new(watson_params)

    respond_to do |format|
      if @watson.save
        format.html { redirect_to @watson, notice: 'Watson was successfully created.' }
        format.json { render :show, status: :created, location: @watson }
      else
        format.html { render :new }
        format.json { render json: @watson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watsons/1
  # PATCH/PUT /watsons/1.json
  def update
    respond_to do |format|
      if @watson.update(watson_params)
        format.html { redirect_to @watson, notice: 'Watson was successfully updated.' }
        format.json { render :show, status: :ok, location: @watson }
      else
        format.html { render :edit }
        format.json { render json: @watson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watsons/1
  # DELETE /watsons/1.json
  def destroy
    @watson.destroy
    respond_to do |format|
      format.html { redirect_to watsons_url, notice: 'Watson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watson
      @watson = Watson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watson_params
      params.fetch(:watson, {})
    end
end
