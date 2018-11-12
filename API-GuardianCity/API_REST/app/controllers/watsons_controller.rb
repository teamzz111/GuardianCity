require "ibm_watson"
include IBMWatson

class WatsonsController < ApplicationController
  before_action :set_watson, only: [:show]

  # GET /watsons
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watson
      @watson = Watson.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def watson_params
      params.fetch(:watson, {})
    end
end
