
import SwiftUI


public struct ATRandomTypoAnimation: ATTextAnimatable {

    private var length: Int
    private var base: String

    public var data: ATElementData
    public var animatableData: Double {
        get { data.value }
        set {
            data.value = newValue
        }
    }


    public init(_ data: ATElementData, length: Int = 2, base: String? = nil) {
        self.data = data
        self.length = data.element.count + length
        self.base = base ?? "!\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~" + "--------------------------------------------------------------------------------------------------------"
    }

    public func body(content: Content) -> some View {
        narrowerText(data.value)
            .fixedSize()
    }

    private func narrowerText(_ value: Double) -> some View {
        let firstText = value >= 0.5 ? Text(data.element) : Text("")
        let random = randomText(Int((1.0 - value) * Double(length)))
        return firstText + Text(random)
    }


    private func randomText(_ length: Int = 2) -> String {
        var newValue: String = ""
        for _ in 0..<length {
            let random = arc4random_uniform(UInt32(base.count))
            newValue += "\(base[base.index(base.startIndex, offsetBy: Int(random))])"
        }
        return newValue
    }
}
