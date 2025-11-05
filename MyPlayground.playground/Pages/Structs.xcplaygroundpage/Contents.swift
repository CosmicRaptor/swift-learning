struct Album {
    let name: String
    let releaseYear: Int
    // Adding property observers here
    // Property observers are just blocks of code that run when a property changes!
    var isOut: Bool = false {
        // didSet runs after the change
        didSet {
            print("isOut has changed! New value: \(isOut)")
        }
        
        // willSet runs before the change happens, has a newValue parameter which holds the future value!
        willSet {
            print("isOut will change! New value: \(newValue)")
        }
    }
    
    // A computed property is one which is calculated every time it is called
    var yearsSinceRelease: Int {
        get {
            return 2025 - releaseYear
        }
        set {
            print("Setting to \(newValue)")
        }
    }
    
    func getReleased() -> Bool {
        return isOut
    }
    
    // If you want to change any property in a struct it must be marked as a mutating function.
    mutating func release() {
        isOut = true
    }
}

struct Player {
    let name: String
    let number: Int
    
    // Initialiser is like a constructor for a struct
    // Swift aut0-generates an initialiser asking for all parameters, you can define yours if you want to
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}
