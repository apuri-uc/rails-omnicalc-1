class ZebraController < ApplicationController
  def platypus
    render({ :template => "omnicalc/homepage" })
  end

  def bird
    render({ :template => "omnicalc/square_new" })
  end

  def giraffe
    @the_num = params.fetch("users_number").to_f

    @the_result = @the_num ** 2
   
    render({ :template => "omnicalc/square_results" })
  end
  
  def elephant
    render({ :template => "omnicalc/square_root_new" })
  end
  
  def lion
    @the_num = params.fetch("input_number").to_f

    @the_result = @the_num ** 0.5
 
  render({ :template => "omnicalc/square_root_results" })
  end
  
  def rhino
    render({ :template => "omnicalc/payment_new" })
  end

  def triangle
    @apr = params.fetch("apr_number").to_f
  @monthly_rate = @apr / 12.0 / 100.0 # APR should be divided by 100 to convert percentage to decimal
  
  @years = params.fetch("years_number").to_f
  @n = @years * 12.0
  @principal = params.fetch("principal_number").to_f

# Correct formula for monthly payment
@payment = @principal * (@monthly_rate * (1 + @monthly_rate) ** @n) / ((1 + @monthly_rate) ** @n - 1)

@final_apr = @apr.to_fs(:percentage, {:precision => 4})
@principal_currency = @principal.to_fs(:currency, {:precision => 2})
@final_payment = @payment.to_fs(:currency, {:precision => 2})

    render({ :template => "omnicalc/payment_results" })
  end

  def reindeer
    render({ :template => "omnicalc/random_new" })
  end

  def orangatang
    @min_random = params.fetch("min_number").to_f

    @max_random = params.fetch("max_number").to_f

    @random = rand(@min_random..@max_random)

    render({ :template => "omnicalc/random_results" })
  end
end
