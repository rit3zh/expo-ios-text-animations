

import SwiftUI


public struct ATOffsetEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .offset(x: 0, y: Double.random(in: -100...100) * data.invValue)
            .animation(.easeInOut(duration: 0.4).delay(Double(data.index) * 0.06), value: data.value)
    }
}

struct ATOffsetEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATOffsetEffect>()
    }
}
