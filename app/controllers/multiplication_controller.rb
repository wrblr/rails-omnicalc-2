class MultiplicationController < ApplicationController
  def show_multiplication_form
    render({ :template => "mult_templates/mult_form" })
  end

  def multiply_these
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @first_number * @second_number

    render({ :template => "mult_templates/mult_results" })
  end
end
