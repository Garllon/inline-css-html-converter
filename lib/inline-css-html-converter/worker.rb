require 'httparty'

module InlineCssHtmlConverter
  class Worker
    API_VERSION = '2.0'

    def initialize(apikey, html)
      raise NoApiKeyGivenError if apikey.nil?

      @apikey = apikey
      @html = html

      if apikey.split('-').length == 2
        @host = "https://#{apikey.split('-')[1]}.api.mailchimp.com/#{API_VERSION}"
      else
        raise InvalidApiKeyError, 'Your MailChimp API key must contain a suffix subdomain (e.g. "-us8").'
      end
    end

    def perform
      result = call_mailchimp
      result['html']
    end

    private

    def call_mailchimp
      HTTParty.post(call_url,
                    body: parameters.to_json,
                    verify: true,
                    headers: { 'Content-Type' => 'application/json' })
    end

    def call_url
      @host + '/helper/inline-css.json'
    end

    def parameters
      {
        apikey: @apikey,
        html: @html
      }
    end
  end
end
