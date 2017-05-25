require 'test_helper'

describe FooClient do
  it 'sends data' do
    FooClient.send_data(4).must_equal 16
  end
end
