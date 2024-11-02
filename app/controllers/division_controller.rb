class DivisionController < ApplicationController
  def show_division_form
    render({ :template => "div_templates/div_form" })
  end

  def divide_these
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result =  @first_number / @second_number

    render({ :template => "div_templates/div_results" })
  end
end
