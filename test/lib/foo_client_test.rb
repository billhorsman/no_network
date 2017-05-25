require 'test_helper'

describe FooClient do
  before do
    HTTParty.expects(:post).once.returns(16)
  end

  it 'sends data' do
    FooClient.send_data(4).must_equal 16
  end
end
