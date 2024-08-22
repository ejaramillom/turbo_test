require "uri"
require "net/http"
require "nokogiri"
require "ostruct"

class SwapeopleService < ApplicationService
  def call
    fetch_swapi_people
  end

  private

  def fetch_swapi_people
    uri = URI.parse(ENV["PEOPLE_SERVICE_URL"])
    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      Rails.logger.info(JSON.parse(response.body))
      people = OpenStruct.new(JSON.parse(response.body))
    else
      render json: { error: "there was an error fetching people in swapi.com", message: response.error }, status: 500
    end

    people
  end
end
