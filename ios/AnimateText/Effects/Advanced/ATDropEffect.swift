

import SwiftUI


public struct ATDropEffect: ATTextAnimateEffect {

    let randomSize: Double
    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
        randomSize = data.size.width
    }

    public func body(content: Content) -> some View {
        content
            .scaleEffect(6 * data.invValue + 1)
            .rotation3DEffect(Angle(degrees: Double.random(in: -270...270) * data.invValue), axis: (x: 0, y: 0, z: 1))
            .animation(.easeInOut.delay(Double(data.index) * 0.05), value: data.value)
            .opacity(data.value)
            .animation(.easeIn.delay(Double(data.index) * 0.05), value: data.value)
            .blur(radius: 26 - 26 * data.value)
            .animation(.spring().delay(Double(data.index) * 0.05), value: data.value)
    }
}

struct ATDropEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATDropEffect>()
    }
}
