Provides primitive BDD-style blocks for test/unit:

    focus Guitar do
      should 'have a play method' do
        assert Guitar.respond_to?(:play)
      end
    end

Also provides ordered output of test run results. As well as
"highlight" nots and nos in the should clause for readability.

To use, place this in your `test_case_helper.rb` file:

    require 'test_unit_extender'

    class Test::Unit::TestCase
      extend TestCaseExtensions
    end
