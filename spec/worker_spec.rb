require 'spec_helper'

module InlineCssHtmlConverter
  describe Worker do
    let(:apikey) { '1-us1' }
    let(:html) { '<html></html>' }

    context '#initialize' do
      it 'set apikey' do
        worker = described_class.new(apikey, html)
        expect(worker.instance_variable_get("@apikey")).to eq apikey
      end

      it 'set html' do
        worker = described_class.new(apikey, html)
        expect(worker.instance_variable_get("@html")).to eq html
      end

      it 'raise an error if no apikey is given' do
        expect { described_class.new(nil, html) }
          .to raise_error(NoApiKeyGivenError)
      end

      it 'raise an error if the api key is invalid' do
        expect { described_class.new('1', html) }
          .to raise_error(InvalidApiKeyError)
      end
    end

    context '#perform' do
      it 'post a request' do
        expect(HTTParty).to receive(:post).and_return({html: ''})

        worker = described_class.new(apikey, html)
        worker.perform
      end
    end
  end
end
