import UIKit

// Composite is a structural design pattern that allows composing objects into a tree-like structure and work with the it as if it was a singular object.

// Composite became a pretty popular solution for the most problems that require building a tree structure. Composite’s great feature is the ability to run methods recursively over the whole tree structure and sum up the results.

protocol Component {
    func accept<T: Theme>(theme: T)
}

extension Component where Self: UIViewController {

    func accept<T: Theme>(theme: T) {
        view.accept(theme: theme)
        view.subviews.forEach({ $0.accept(theme: theme) })
    }
}

extension UIView: Component {}

extension UIViewController: Component {}

extension Component where Self: UIView {

    func accept<T: Theme>(theme: T) {

        print("\t\(description): has applied \(theme.description)")

        backgroundColor = theme.backgroundColor
    }
}

extension Component where Self: UILabel {

    func accept<T: LabelTheme>(theme: T) {

        print("\t\(description): has applied \(theme.description)")

        backgroundColor = theme.backgroundColor
        textColor = theme.textColor
    }
}

extension Component where Self: UIButton {

    func accept<T: ButtonTheme>(theme: T) {

        print("\t\(description): has applied \(theme.description)")

        backgroundColor = theme.backgroundColor
        setTitleColor(theme.textColor, for: .normal)
        setTitleColor(theme.highlightedColor, for: .highlighted)
    }
}

protocol Theme: CustomStringConvertible {

    var backgroundColor: UIColor { get }
}
protocol ButtonTheme: Theme {

    var textColor: UIColor { get }

    var highlightedColor: UIColor { get }

    /// other properties
}

protocol LabelTheme: Theme {

    var textColor: UIColor { get }

    /// other properties
}

/// Button Themes

struct DefaultButtonTheme: ButtonTheme {

    var textColor = UIColor.red

    var highlightedColor = UIColor.white

    var backgroundColor = UIColor.orange

    var description: String { return "Default Buttom Theme" }
}

struct NightButtonTheme: ButtonTheme {

    var textColor = UIColor.white

    var highlightedColor = UIColor.red

    var backgroundColor = UIColor.black

    var description: String { return "Night Buttom Theme" }
}

/// Label Themes

struct DefaultLabelTheme: LabelTheme {

    var textColor = UIColor.red

    var backgroundColor = UIColor.black

    var description: String { return "Default Label Theme" }
}

struct NightLabelTheme: LabelTheme {

    var textColor = UIColor.white

    var backgroundColor = UIColor.black

    var description: String { return "Night Label Theme" }
}
