require 'pry'
require 'watchmen'
require 'webmock/rspec'
WebMock.disable_net_connect!

RSpec.configure do |config|
  config.before(:each) do
    response = '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"><html><head><meta content="en" name="language"/><meta content="NO-CACHE" http-equiv="PRAGMA"/><meta content="text/html; charset=utf-8" http-equiv="Content-Type"/><meta content="index, follow" name="robots"/><title>Images.com</title>
                <body>
                <h1>A website with images</h1>
                <img src="public/image1.jpg" />
                <img src="public/image2.jpg" />
                <img src="public/image3.jpg" />
                </body>
                </html>'
    stub_request(:any, "www.images.com/").to_return(:status => 200, :body => response)
  end
end
