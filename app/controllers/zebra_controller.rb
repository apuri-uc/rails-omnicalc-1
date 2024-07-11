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
    render({ :template => "omnicalc/payment_results" })
  end

  def reindeer
    render({ :template => "omnicalc/random_new" })
  end

  def orangatang
    @min_random = params.fetch("min_number").to_f

    @max_random = params.fetch("max_number").to_f

    @random = params.fetch("max_number").to_f

    render({ :template => "omnicalc/random_results" })
  end
end
