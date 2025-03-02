require 'net/http'
require 'json'

class OpentdbService
  BASE_URL = 'https://opentdb.com/api.php'

  def self.fetch_trivia(number)
    url = "#{BASE_URL}?amount=#{number}&category=9&difficulty=easy&type=boolean"
    response = Net::HTTP.get_response(URI(url))

    if response.is_a?(Net::HTTPSuccess)
      parsed_data = JSON.parse(response.body)
      return parsed_data["results"]
    else
      puts "Error: API request failed with status #{response.code} - #{response.message}"
      puts "Please wait 6 seconds before trying again."
      return []
    end
  end
end