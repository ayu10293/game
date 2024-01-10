class RareCalculationController < ApplicationController
  def show
    @rare_calculation_form = RareCalculationForm.new
  end

  def result
    @rare_calculation_form = RareCalculationForm.new(rare_calculation_form_params)
    if @rare_calculation_form.invalid? #不正があった場合、もう一度入力するためにshowに戻る
      render :show
      return
    end
    @have_total = 0
    @goal_rarity = rare_calculation_form_params[:target_rare].to_i
    @goal_count = 3 ** (@goal_rarity - 1 )
    @have_total += 3 ** 8 * rare_calculation_form_params[:rare_9].to_i
    @have_total += 3 ** 7 * rare_calculation_form_params[:rare_8].to_i
    @have_total += 3 ** 6 * rare_calculation_form_params[:rare_7].to_i
    @have_total += 3 ** 5 * rare_calculation_form_params[:rare_6].to_i
    @have_total += 3 ** 4 * rare_calculation_form_params[:rare_5].to_i
    @have_total += 3 ** 3 * rare_calculation_form_params[:rare_4].to_i
    @have_total += 3 ** 2 * rare_calculation_form_params[:rare_3].to_i
    @have_total += 3 * rare_calculation_form_params[:rare_2].to_i
    @have_total += rare_calculation_form_params[:rare_1].to_i

    @rest = @goal_count - @have_total
  end

  private
  def rare_calculation_form_params
    params.require(:rare_calculation_form).permit(:target_rare, :rare_9, :rare_8, :rare_7, :rare_6, :rare_5, :rare_4, :rare_3, :rare_2, :rare_1)
  end
end
