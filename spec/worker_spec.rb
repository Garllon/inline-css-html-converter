require 'spec_helper'

module InlineCssHtmlConverter
  describe Worker do

    context '#initialize' do
      let(:apikey) { '1' }
      let(:html) { '<html></html>' }

      it 'set apikey' do
        worker = described_class.new(apikey, html)
        expect(worker.instance_variable_get("@apikey")).to eq apikey
      end

      it 'set html' do
        worker = described_class.new(apikey, html)
        expect(worker.instance_variable_get("@html")).to eq html
      end
    end
  end
end
