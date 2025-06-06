class CalculationsController < ApplicationController
def square_root_form
  @sq_root_new_number = params[:sq_root_new_number].to_f
  @sq_root = Math.sqrt(@sq_root_new_number)
  render file: Rails.root.join("views", "square_root"), formats: [:html]
end

def payment_form
  @APR_value = params[:APR_value].to_f
  @years_value = params[:years_value].to_i
  @principal_value = params[:principal_value].to_f
  @payment = ((@APR_value / 100 / 12) * @principal_value) / (1 - (1 + (@APR_value / 100 / 12))**(-@years_value * 12))
  render file: Rails.root.join("views", "payment"), formats: [:html]
end

def random_form
  @user_min = params[:user_min].to_f
  @user_max = params[:user_max].to_f
  @random_value = rand(@user_min..@user_max)
  render file: Rails.root.join("views", "random.erb"), formats: [:html]
end
end
