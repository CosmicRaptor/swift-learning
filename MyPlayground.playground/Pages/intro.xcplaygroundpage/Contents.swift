
// Variables
var name = "Aryan"

// Constants
let surname = "Pathak"

// String interpolation
let message = "I'm \(name) \(surname)"

// Enums
enum Status {
    case Available, Busy
}

var stat = Status.Available
stat = .Busy

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

rollDice()
