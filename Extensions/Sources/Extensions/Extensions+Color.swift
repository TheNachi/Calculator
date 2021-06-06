import UIKit

public extension UIColor {
    
    convenience init(red: CGFloat, green: CGFloat, blue: CGFloat) {
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    static var ScreenBackgroundColor: UIColor {
        return UIColor(red: 10, green: 32, blue: 50)
    }
}
