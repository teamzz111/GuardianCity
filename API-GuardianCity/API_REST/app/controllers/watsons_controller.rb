require "ibm_watson"
include IBMWatson

class WatsonsController < ApplicationController
  before_action :set_watson, only: [:show]

  # GET /watsons
  def index
    params.permit(:message)
    assistant = IBMWatson::AssistantV1.new(
        version: "2018-09-20",
        username: ENV['WATSON_USERNAME'],
        password: ENV['WATSON_PASSWORD'],
        url:"https://gateway.watsonplatform.net/assistant/api",
        iam_apikey: ENV['WATSON_IAM_APIKEY']
    )

    response = assistant.message(
        workspace_id: ENV['WATSON_WORKSPACE_ID'],
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
