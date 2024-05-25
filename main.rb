# frozen_string_literal: true

require("bundler")

Bundler.require(:main)
Bundler.require(:test)

class Test < Minitest::Test
  include Xirr


  def test_xirr
    cf = cf_microsoft_example
    assert_equal 3000, cf.sum
    assert_equal 37.34, (cf.xirr * 100).round(2)
  end

  private

  # Example from support.microsoft.com/en-us/office/xirr-function-de1242ec-6477-445b-b11b-a303ad9adc9d
  def cf_microsoft_example
      cf = Cashflow.new
      [
        -10000, "1-Jan-08",
          2750, "1-Mar-08",
          4250, "30-Oct-08",
          3250, "15-Feb-09",
          2750, "1-Apr-09"
      ].in_groups_of(2) do |amount, date|
        cf << Transaction.new(amount, date: date.to_date)
      end

      cf
  end
end

