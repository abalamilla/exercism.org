let birthday = "Birthday"
let valentine = "Valentine's Day"
let anniversary = "Anniversary"
let space: Character = " "
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  return "Happy\(String(space))\(occasion)\(String(space))\(name)\(String(exclamation))"
}

func graduationFor(name: String, year: Int) -> String {
  return "Congratulations\(String(space))\(name)\(String(exclamation))\nClass of \(year)"
}

func costOf(sign: String) -> Int {
  return sign.count * 2 + 20
}
