class CalculationsController < ApplicationController
  def instructions
  end

  def square
    @number = params[:number]
    @square = @number.to_i * @number.to_i

  end

  def sqrt
    @number = params[:number]
    @sqrt = Math.sqrt(@number.to_i)

  end

  def pmt
    @int = params[:int_rate].to_f
    @num_pmt = params[:pmt].to_f
    @principal = params[:principal].to_f

    rate = @int / 100

    @loan_payment = (rate * @principal)/(1 - (1 + rate)**-@num_pmt)
  end
end
