class CalculationsController < ApplicationController
  def square_form
    @sq_new_number = params[:sq_new_number].to_f
    @squared = @sq_new_number * @sq_new_number
  end

  def square_results
    @sq_new_number = params[:sq_new_number].to_f
    @squared = @sq_new_number * @sq_new_number
  end

  def square_root_form
    @sq_root_new_number = params[:sq_root_new_number].to_f
    @sq_root = Math.sqrt(@sq_root_new_number)
  end

  def square_root_results
    @sq_root_new_number = params[:sq_root_new_number].to_f
    @sq_root = Math.sqrt(@sq_root_new_number)
  end

  def payment_form
    @APR_value = params[:APR_value].to_f
    @years_value = params[:years_value].to_i
    @principal_value = params[:principal_value].to_f
    @payment = ((@APR_value / 100 / 12) * @principal_value) / (1 - (1 + (@APR_value / 100 / 12))**(-@years_value * 12))
  end

  def payment_results
    @APR_value = params[:APR_value].to_f
    @years_value = params[:years_value].to_i
    @principal_value = params[:principal_value].to_f
    @payment = ((@APR_value / 100 / 12) * @principal_value) / (1 - (1 + (@APR_value / 100 / 12))**(-@years_value * 12))
  end

  def random_form
    @user_min = params[:user_min].to_f
    @user_max = params[:user_max].to_f
    @random_value = rand(@user_min..@user_max)
  end

  def random_results
    @user_min = params[:user_min].to_f
    @user_max = params[:user_max].to_f
    @random_value = rand(@user_min..@user_max)
  end
end
