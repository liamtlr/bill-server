class Bill

  attr_reader :generated, :due_date, :billing_period, :total, :tv_subscription,
              :phone_subscription, :internet_subscription, :subscription_total,
              :call_charges, :call_charges_total, :rentals, :buy_and_keep, :sky_store_total

  def initialize(bill)
    @generated = bill["statement"]["generated"]
    @due_date = bill["statement"]["due"]
    @billing_period = bill["statement"]["period"]
    @total = bill["total"]
    @tv_subscription = bill["package"]["subscriptions"][0]
    @phone_subscription = bill["package"]["subscriptions"][1]
    @internet_subscription = bill["package"]["subscriptions"][2]
    @subscription_total = bill["package"]["total"]
    @call_charges = bill["callCharges"]["calls"]
    @call_charges_total = bill["callCharges"]["total"]
    @rentals = bill["skyStore"]["rentals"]
    @buy_and_keep = bill["skyStore"]["buyAndKeep"]
    @sky_store_total = bill["skyStore"]["total"]

  end
end
