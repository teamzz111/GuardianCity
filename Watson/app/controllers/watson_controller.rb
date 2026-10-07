class WatsonController < ApplicationController
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
          text: "Hola"
      }
  )
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: response }

  end
end
