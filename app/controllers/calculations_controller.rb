class CalculationsController < ApplicationController
  def new
    @calculation = Calculation.new
  end

  def create
    calculation = Calculation.new(calculation_params)
    calculation.save
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def calculation_params
    params.require(:calculation).permit(:title, :body)
  end
end
