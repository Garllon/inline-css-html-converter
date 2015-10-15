require 'spec_helper'

module InlineCssHtmlConverter
  describe Worker do
    let(:apikey) { '1' }
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
