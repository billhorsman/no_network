# No Network Please, I'm Testing

Accompanies Medium article [here](https://medium.com/@billhorsman).


```
$ bundle exec ruby -Ilib:test test/lib/foo_client_test.rb
Run options: --seed 28011

# Running:

.

Finished in 0.001540s, 649.3507 runs/s, 1298.7013 assertions/s.

1 runs, 2 assertions, 0 failures, 0 errors, 0 skips
```

Comment out the stub in the `foo_client_test.rb` file and run the tests again:

```
$ bundle exec ruby -Ilib:test test/lib/foo_client_test.rb
Run options: --seed 7577

# Running:

E

Finished in 0.001557s, 642.2608 runs/s, 0.0000 assertions/s.

  1) Error:
FooClient#test_0001_sends data:
UncaughtThrowError: uncaught throw "DON'T USE THE NETWORK IN TEST. Please stub HTTParty.post"
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/mocha-1.2.1/lib/mocha/thrower.rb:10:in `throw'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/mocha-1.2.1/lib/mocha/thrower.rb:10:in `evaluate'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/mocha-1.2.1/lib/mocha/return_values.rb:20:in `next'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/mocha-1.2.1/lib/mocha/expectation.rb:569:in `invoke'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/mocha-1.2.1/lib/mocha/mock.rb:296:in `method_missing'
    /Users/bill/.rbenv/versions/2.4.0/lib/ruby/gems/2.4.0/gems/mocha-1.2.1/lib/mocha/class_method.rb:61:in `post'
    /Users/bill/git/no_network/lib/foo_client.rb:7:in `send_data'
    test/lib/foo_client_test.rb:9:in `block (2 levels) in <main>'

1 runs, 0 assertions, 0 failures, 1 errors, 0 skips
```
