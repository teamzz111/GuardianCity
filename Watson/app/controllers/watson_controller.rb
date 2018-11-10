class WatsonController < ApplicationController
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
          text: "Hola"
      }
  )
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: response }

  end
end
