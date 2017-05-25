module NoNetwork
  def before_setup
    block_class_methods(
      Stripe::Customer => [:create],
      Stripe::Charge => [:create],
      Stripe::Refund => [:create],
      HTTParty => [:get, :put, :patch, :post, :delete]
    )
    block_instance_methods(
      Net::HTTP => [:start, :request_get, :request_head, :request_post]
    )
  end

  def expect_and_throw(obj, method, description)
    obj.
      expects(method).
      at_least(0).
      throws("DON'T USE THE NETWORK IN TEST. Please stub #{description}")
  end

  def block_class_methods(list)
    list.each do |obj, methods|
      Array(methods).each do |method|
        expect_and_throw obj, method, "#{obj}.#{method}"
      end
    end
  end

  def block_instance_methods(list)
    list.each do |obj, methods|
      Array(methods).each do |method|
        expect_and_throw obj.any_instance, method, "#{obj}##{method}"
      end
    end
  end
end

class Minitest::Test
  include NoNetwork
end
