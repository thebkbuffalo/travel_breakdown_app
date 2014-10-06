module EventsHelper
  def get_paid
     @total_paid = 0
     @role.expenses.where(approved: true).each do |expense|
      @total_paid += expense.amount.to_f
    end
     @total_paid
  end

  def get_individual_cost
    @total_cost = 0
    @type = @event.expenses.map do |expense|
      if expense.approved == true
        if expense.calculation_type.downcase == "groceries"
          @total_cost += expense.groceries
        elsif expense.calculation_type.downcase == "boat"
          @total_cost += expense.boat
        elsif expense.calculation_type.downcase == "gift"
          @total_cost += expense.gift
        end
      end
    end
    @total_cost
  end
end
