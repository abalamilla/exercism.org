func getCard(at index: Int, from stack: [Int]) -> Int {
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  if (index > stack.count || index < 0) {
    return stack
  }

  var copyStack = stack
  copyStack[index] = newCard

  return copyStack
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  var newStack = stack
  newStack.append(newCard)

  return newStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  if(index > stack.count || index < 0) {
    return stack
  }

  var newStack = Array(stack)
  newStack.remove(at: index)

  return newStack
}

func removeTopCard(_ stack: [Int]) -> [Int] {
  return removeCard(at: stack.count - 1, from: stack)
}

func insert(_ newCard: Int, atBottomOf stack: [Int]) -> [Int] {
  var newStack = Array(stack)
  newStack.insert(newCard, at: 0)

  return newStack
}

func removeBottomCard(_ stack: [Int]) -> [Int] {
  return removeCard(at: 0, from: stack)
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  return stack.count == size
}

func evenCardCount(_ stack: [Int]) -> Int {
  return stack.filter { $0 % 2 == 0 }.count
}
