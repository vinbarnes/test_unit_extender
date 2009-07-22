# Place this in your test_case_helper.rb file:
#
# require 'test_unit_extender'
# 
# class Test::Unit::TestCase
#   extend TestCaseExtensions
# end

module TestCaseExtensions
  def order
    @order = (@order) ? @order += 1 : 1
  end
  
  def should(testname, &block)
    unless block_given?
      pending = 'PENDING '
      block = lambda {}
    end
    testname = "test #{'%2d' % order}. #{pending}#{@focus}should #{testname}".gsub(/\s(no|not)\s/i, ' *\1* ')
    define_method(testname, block)
  end
  
  def focus(object)
    return unless block_given?
    @focus = object.to_s + ' '
    yield
    @focus = nil
  end
end
