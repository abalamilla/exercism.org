class Anagram {
  let word: String

  init(word: String) {
    self.word = word
  }

  func transform(_ str: String) -> String {
    String(str.lowercased().sorted())
  }

  func match(_ candidates: [String]) -> [String] {
    return candidates.filter {transform($0) == transform(self.word) && $0.lowercased() != self.word.lowercased()}
  }
}
