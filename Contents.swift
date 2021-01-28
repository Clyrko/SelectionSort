import UIKit


// Creating a list of random numbers

var numbers: [Int] = []
for _ in 0..<10 {
    numbers.append(Int.random(in: 0...100))
}

// Sorting the list
var sortedList: [Int] = []

for _ in 0..<numbers.count {
    var smallestNumber = numbers[0]
    var smallestNumberIndex = 0
    
    for (index, number) in numbers.enumerated() {
        if number < smallestNumber {
            smallestNumber = number
            smallestNumberIndex = index
        }
    }
//   Adding the smallest Int to sorted list
    sortedList.append(smallestNumber)
//   Removing the smallest Int from the unsorted list
    numbers.remove(at: smallestNumberIndex)
}

print(sortedList)

