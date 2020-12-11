module ApplicationHelper
  include Pagy::Frontend
  def calendar(date = Date.today, &block)
   Calendar.new(self, date, block).table
 end

end
