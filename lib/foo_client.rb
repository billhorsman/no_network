require 'httparty'

class FooClient
  URL = "http://doesnotexistatall.com"

  def self.send_data(value)
    HTTParty.post(URL, body: { value: value })
  end
end
