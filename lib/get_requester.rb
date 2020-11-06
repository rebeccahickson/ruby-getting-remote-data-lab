require 'open-uri'
require 'net/http'

class GetRequester
  attr_reader :url_string

  def initialize(url_string)
    @url_string = url_string
  end

  def get_response_body
    url = @url_string
    uri = URI.parse(url)
    response = Net::HTTP.get(uri)
  end

  def parse_json
    JSON.parse(get_response_body)
  end
end
