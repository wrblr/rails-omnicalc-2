class AdditionController < ApplicationController
  def show_addition_form
    render({ :template => "add_templates/add_form" })
  end

  def add_these
    @first_number = params.fetch("first_num").to_f
    @second_number = params.fetch("second_num").to_f

    @result = @first_number + @second_number


    render({ :template => "add_templates/add_results" })
  end
end
