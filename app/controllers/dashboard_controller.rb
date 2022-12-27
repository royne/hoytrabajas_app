class DashboardController < ApplicationController

  def index
    @totals = { banks: Bank.count, providers: Provider.count }
  end

end
