# No Network Please, I'm Testing

Accompanies Medium article [here](https://medium.com/@billhorsman).


```
$ bundle exec ruby -Ilib:test test/lib/foo_client_test.rb
test/lib/foo_client_test.rb:3:in `<main>': uninitialized constant FooClient (NameError)
bill@mbp no_network$ bundle exec ruby -Ilib:test test/lib/foo_client_test.rb
Run options: --seed 4458

# Running:

E

Finished in 0.003613s, 276.7783 runs/s, 0.0000 assertions/s.

  1) Error:
FooClient#test_0001_sends data:
SocketError: Failed to open TCP connection to doesnotexistatall.com:80 (getaddrinfo: nodename nor servname provided, or not known)
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/2.4.0/net/http.rb:906:in `rescue in block in connect'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/2.4.0/net/http.rb:903:in `block in connect'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/2.4.0/timeout.rb:93:in `block in timeout'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/2.4.0/timeout.rb:103:in `timeout'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/2.4.0/net/http.rb:902:in `connect'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/2.4.0/net/http.rb:887:in `do_start'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/2.4.0/net/http.rb:876:in `start'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/2.4.0/net/http.rb:1407:in `request'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/httparty-0.14.0/lib/httparty/request.rb:118:in `perform'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/httparty-0.14.0/lib/httparty.rb:560:in `perform_request'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/httparty-0.14.0/lib/httparty.rb:502:in `post'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/httparty-0.14.0/lib/httparty.rb:602:in `post'
    /Users/bill/git/no_network/lib/foo_client.rb:7:in `send_data'
    test/lib/foo_client_test.rb:5:in `block (2 levels) in <main>'

1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```
