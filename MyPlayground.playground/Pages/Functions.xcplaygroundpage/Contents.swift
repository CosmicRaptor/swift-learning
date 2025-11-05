// To handle errors in functions, we first define what errors the function can actually throw
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if (password.count < 5) {
        throw PasswordError.short
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    return "OK"
}

// To call this, we use:

do {
    let result = try checkPassword("12345")
    print(result)
} catch PasswordError.short {
    print("Password is too short.")
} catch PasswordError.obvious {
    print("Password is too obvious.")
} catch {
    print("Unexpected error: \(error).")
}
