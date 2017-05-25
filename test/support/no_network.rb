module NoNetwork
  def before_setup
    HTTParty.expects(:post).at_least(0).throws("DON'T USE THE NETWORK IN TEST. Please stub HTTParty.post")
  end
end

class Minitest::Test
  include NoNetwork
end
