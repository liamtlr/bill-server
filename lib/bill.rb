class Bill

  attr_reader :generated, :due_date, :billing_period, :total, :subscription_total,
              :call_charges, :call_charges_total, :rentals, :buy_and_keep, :sky_store_total,
              :subscriptions

  def initialize(bill)
    @generated = bill["statement"]["generated"]
    @due_date = bill["statement"]["due"]
    @billing_period = bill["statement"]["period"]
    @total = format_cost(bill["total"])
    @subscriptions = bill["package"]["subscriptions"]
    @subscription_total = format_cost(bill["package"]["total"])
    @call_charges = bill["callCharges"]["calls"]
    @call_charges_total = bill["callCharges"]["total"]
    @rentals = bill["skyStore"]["rentals"]
    @buy_and_keep = bill["skyStore"]["buyAndKeep"]
    @sky_store_total = bill["skyStore"]["total"]
  end

  private

  def format_cost(cost_string)
    "%.02f" % cost_string
  end

end
