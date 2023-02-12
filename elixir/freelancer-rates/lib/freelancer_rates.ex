defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount - (discount / 100 * before_discount)
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_rate = FreelancerRates.daily_rate(hourly_rate) * 22
    ceil FreelancerRates.apply_discount(monthly_rate, discount)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily_rate = daily_rate(hourly_rate)
    rate = apply_discount(daily_rate, discount)
    Float.floor budget / rate, 1
  end
end
