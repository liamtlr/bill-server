class Bill

  attr_reader :generated, :due_date, :billing_period, :total, :tv_subscription,
              :tv_subscription_price, :phone_subscription, :phone_subscription_price,
              :internet_subscription, :internet_subscription_price, :subscription_total,
              :call_charges, :call_charges_total, :rentals, :buy_and_keep, :sky_store_total

  def initialize(bill)
    @generated = bill["statement"]["generated"]
    @due_date = bill["statement"]["due"]
    @billing_period = bill["statement"]["period"]
    @total = "%.02f" % bill["total"]
    @tv_subscription = bill["package"]["subscriptions"][0]["name"]
    @tv_subscription_price = "%.02f" % bill["package"]["subscriptions"][0]["cost"]
    @phone_subscription = bill["package"]["subscriptions"][1]["name"]
    @phone_subscription_price = "%.02f" % bill["package"]["subscriptions"][1]["cost"]
    @internet_subscription = bill["package"]["subscriptions"][2]["name"]
    @internet_subscription_price = "%.02f" % bill["package"]["subscriptions"][2]["cost"]
    @subscription_total = bill["package"]["total"]
    @call_charges = bill["callCharges"]["calls"]
    @call_charges_total = bill["callCharges"]["total"]
    @rentals = bill["skyStore"]["rentals"]
    @buy_and_keep = bill["skyStore"]["buyAndKeep"]
    @sky_store_total = bill["skyStore"]["total"]

  end
end
