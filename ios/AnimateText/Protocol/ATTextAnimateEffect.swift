
import SwiftUI


public enum ATUnitType {

    case letters

    case words
}


public protocol ATTextAnimateEffect: ViewModifier {


    var data: ATElementData { get }

    var userInfo: Any? { get }

    init(_ data: ATElementData, _ userInfo: Any?)
}
