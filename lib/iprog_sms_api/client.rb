require "net/http"
require "uri"
require "json"

module IprogSmsApi
  class Client
    BASE_URL = "https://sms.iprogtech.com/api/v1"

    def initialize(api_token:)
      @api_token = api_token
    end

    def send_sms(phone_number:, message:)
      uri = URI("#{BASE_URL}/sms_messages")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(uri.path, { "Content-Type" => "application/json" })
      request.body = {
        api_token: @api_token,
        phone_number: phone_number,
        message: message
      }.to_json

      response = http.request(request)
      JSON.parse(response.body)
    rescue StandardError => e
      { error: e.message }
    end

    def check_sms_credits
      uri = URI("#{BASE_URL}/account/sms_credits?api_token=#{@api_token}")
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(uri)

      response = http.request(request)
      JSON.parse(response.body)
    rescue StandardError => e
      { error: e.message }
    end
  end
end
