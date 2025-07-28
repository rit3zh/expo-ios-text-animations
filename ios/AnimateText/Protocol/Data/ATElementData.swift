
import SwiftUI


public struct ATElementData {


    public let element: String


    public let type: ATUnitType


    public let index: Int


    public let count: Int


    public var value: Double


    public var size: CGSize


    public var scale: Double {
        return correctValue(value)
    }


    public var invScale: Double {
        return correctValue(1.0 - value)
    }


    public var invValue: Double {
        return 1.0 - value
    }


    public var locValue: Double {
        return correctValue(Double(index) / Double(count - 1))
    }


    private func correctValue(_ value: Double) -> Double {
        let newValue = max(value, 0.001)
        return min(newValue, 1.0)
    }
}
