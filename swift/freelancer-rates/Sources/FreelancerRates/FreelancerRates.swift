func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(8 * hourlyRate)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate = dailyRateFrom(hourlyRate: hourlyRate) * 22
  let totalDiscount = monthlyRate * discount / 100
  let rateWithDiscount = monthlyRate - totalDiscount

  return rateWithDiscount.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = monthlyRateFrom(hourlyRate: hourlyRate, withDiscount: discount) / 22
  let days = budget / dailyRate

  return days.rounded(.down)
}
