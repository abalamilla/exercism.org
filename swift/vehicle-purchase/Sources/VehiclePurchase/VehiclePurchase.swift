func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  let payment = price / (5 * 12)
  let budgetThreshold = monthlyBudget * 1.1

  if payment < monthlyBudget {
    return "Yes! I'm getting a \(vehicle)"
  } else if payment > monthlyBudget && payment < budgetThreshold {
      return "I'll have to be frugal if I want a \(vehicle)"
  } else {
    return "Darn! No \(vehicle) for me"
  }
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
    case 2: return "You will need a motorcycle license for your vehicle"
    case 6: return "You will need an automobile license for your vehicle"
    case 18: return "You will need a commercial trucking license for your vehicle"
    default: return "We do not issue licenses for those types of vehicles"
  }
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
  guard yearsOld < 10 else { return 25 }

  let baseCost = msrp > 25000 ? Double(msrp) : 25000.0
  let p = 10.0 * Double(yearsOld) / 100.0

  return Int((baseCost - (p * baseCost)) / 100)
}
