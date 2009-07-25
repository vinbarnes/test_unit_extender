Provides primitive BDD-style blocks for test/unit:

    focus Guitar do
      should 'have a play method' do
        assert Guitar.respond_to?(:play)
      end
    end

Also provides ordered output of test run results. As well as
"highlight" nots and nos in the should clause for readability.

    Loaded suite test/exemplar_test
    Started
    test  1. Exemplar should have a add_methods_to_model method(ExemplarTest): .
    test  2. add_methods_to_model should accept a model argument(ExemplarTest): .
    test  3. add_methods_to_model should require a model argument(ExemplarTest): .
    test  4. add_methods_to_model should be called when Exemplar is subclassed(ExemplarTest): .
    
    Finished in 0.003113 seconds.
    
    4 tests, 4 assertions, 0 failures, 0 errors

To use, place this in your `test_case_helper.rb` file:

    require 'test_unit_extender'

    class Test::Unit::TestCase
      extend TestCaseExtensions
    end
