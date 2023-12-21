import Foundation

func PhoneNumber(_ number: String) -> String {
    let pattern = "^(?:\\+?1(?:\\W+)?)?\\(?([2-9]\\d{2})\\)?(?:\\W+)?([2-9]\\d{2})(?:\\W+)?(\\d{4})(?:\\W+)?$"
    do {
        let regex = try NSRegularExpression(pattern: pattern)

        let matches = regex.matches(in: number, range: NSRange(number.startIndex..., in: number))

        for match in matches {
    for groupIndex in 0..<match.numberOfRanges {
        let groupRange = match.range(at: groupIndex)
        if groupRange.location != NSNotFound {
            let groupMatch = (number as NSString).substring(with: groupRange)
            print("Group \(groupIndex): \(groupMatch)")
        }
    }
    print("---")
}

    } catch {
    }
        return number
}
