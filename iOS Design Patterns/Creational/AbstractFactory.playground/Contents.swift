import UIKit

// Abstract Factory is a creational design pattern, which solves the problem of creating entire product families without specifying their concrete classes


enum AuthType {
    case login
    case signUp
}

protocol AuthViewFactory {
    func loginOrSignup(authType: AuthType) -> AuthView
}


class StudentAuthFactory: AuthViewFactory {
    func loginOrSignup(authType: AuthType) -> AuthView {
        switch authType {
        case .login:
            return StudentsLoginScreen()
        case .signUp:
            return StudentsSignupScreen()
        }
    }
}

class TeachersAuthFactory: AuthViewFactory {
    func loginOrSignup(authType: AuthType) -> AuthView {
        switch authType {
        case .login:
            return TeachersLoginScreen()
        case .signUp:
            return TeachersSignupScreen()
        }
    }
}


class AuthView {}

class StudentsLoginScreen: AuthView {}
class StudentsSignupScreen: AuthView {}
class TeachersLoginScreen: AuthView {}
class TeachersSignupScreen: AuthView {}
