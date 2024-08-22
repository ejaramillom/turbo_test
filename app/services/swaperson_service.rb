require "uri"
require "net/http"
require "nokogiri"
require "ostruct"

class SwapersonService < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    fetch_swapi_person(@params)
  end

  private

  def fetch_swapi_person(params)
    uri = URI.parse(ENV["PEOPLE_SERVICE_URL"]) + params[:person_id]
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      person = OpenStruct.new(response.body)
    else
      render json: { error: "there was an error fetching the person in swapi.com", message: response.error }, status: 500
    end

    person
  end
end
