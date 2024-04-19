class OmniController < ApplicationController


  def new_square
    render({:template=> "functions/new_square"})
  end

  def square_results
    @square_number_var = params["number"]
    @square_var = @square_number_var.to_f * @square_number_var.to_f
    render({:template=> "functions/square_results"})
  end

  def new_square_root
    render({:template=> "functions/new_square_root"})
  end

  def square_root_results
    @square_root_input = params["user_number"]
  @square_root_result = Math.sqrt(@square_root_input.to_f)
    render({:template=> "functions/square_root_results"})
  end

  def new_payment
    render({:template=> "functions/new_payment"})
  end

  def payment_results
    @apr_input = params["user_apr"].to_f
  @r_input = @apr_input/100/12
  @dec_apr_input = sprintf("%.4f%%", @apr_input)
  @years_input = params["user_years"].to_i
  @n_input = @years_input*12
  @principal_input = params["user_pv"].to_f
  @dec_principal = format("%.2f", @principal_input)
  @payment_num = @r_input * @principal_input
  @payment_denom = 1 - ((1 + @r_input)** -@n_input)
  @payment = @payment_num/@payment_denom
  @dec_payment = sprintf("$%0.2f", @payment)
  @fully_format_payment= @dec_payment.gsub(/(\d)(?=(\d{3})+(?!\d))/, '\\1,')

    render({:template=> "functions/payment_results"})
  end

  def new_random
    render({:template=> "functions/new_random"})
  end

  def random_results
    @min = params["user_min"].to_f
    @max = params["user_max"].to_f
    @random_number = rand*(@max-@min)+@min
    render({:template=> "functions/random_results"})
  end
end
