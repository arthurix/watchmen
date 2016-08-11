require 'pry'

describe Watchmen::Downloader do
    subject(:downloader) { described_class.new(url, destination) }

    context 'when it is successfull' do
      let(:url) { 'http://www.images.com' }
      let(:destination) { '~/Downloads' }
      
      it { expect(downloader.execute).to eq('') }
    end
end
