class RareCalculationController < ApplicationController
  def show
  end

  def result
    @have_total = 0
    @goal_rarity = params[:target_rare].to_i
    @goal_count = 3 ** (@goal_rarity - 1 )
    @have_total += 3 ** 8 * params[:rare_9].to_i
    @have_total += 3 ** 7 * params[:rare_8].to_i
    @have_total += 3 ** 6 * params[:rare_7].to_i
    @have_total += 3 ** 5 * params[:rare_6].to_i
    @have_total += 3 ** 4 * params[:rare_5].to_i
    @have_total += 3 ** 3 * params[:rare_4].to_i
    @have_total += 3 ** 2 * params[:rare_3].to_i
    @have_total += 3 * params[:rare_2].to_i
    @have_total += params[:rare_1].to_i

    @rest = @goal_count - @have_total
  end
end
