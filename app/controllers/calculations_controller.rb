class CalculationsController < ApplicationController
  def square_form
    # Just renders the form
  end

  def square_results
    @number = params[:sq_new_number].to_f
    @squared = @number ** 2
  end

  def square_root_form
    # Just renders the form
  end

  def square_root_results
    @sq_root_new_number = params[:sq_root_new_number].to_f
    @sq_root = Math.sqrt(@sq_root_new_number)
  end

  def payment_form
    # Just renders the form
  end

  def payment_results
    apr = params[:APR_value].to_f / 100 / 12
    periods = params[:years_value].to_i * 12
    principal = params[:principal_value].to_f

    @payment = (apr * principal) / (1 - (1 + apr)**-periods)
  end

  def random_form
    # Just renders the form
  end

  def random_results
    @user_min = params[:user_min].to_f
    @user_max = params[:user_max].to_f
    @random_value = rand(@user_min..@user_max)
  end
end
