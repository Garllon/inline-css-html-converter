module InlineCssHtmlConverter
  class Worker
    API_VERSION = '2.0'

    def initialize(apikey, html)
      @apikey = apikey
      @html = html
    end

    def perform
      host = "https://#{@apikey.split('-')[1]}.api.mailchimp.com/#{API_VERSION}"

      call_url = host + '/helper/inline-css.json'
      result = HTTParty.post(call_url,
                             query: parameters,
                             verify: false,
                             headers: { 'Content-Type' => 'application/json' })
      result['html']
    end

    private

    def parameters
      {
        apikey: @apikey,
        html: @html
      }
    end
  end
end
