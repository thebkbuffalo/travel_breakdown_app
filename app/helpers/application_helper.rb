module ApplicationHelper
  def total_days
    (end_date - start_date).to_i
  end
end
