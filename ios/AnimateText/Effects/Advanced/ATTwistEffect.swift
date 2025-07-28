

import SwiftUI


public struct ATTwistEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .scaleEffect(3 * data.invValue + 1)
            .blur(radius: 12 * data.invValue)
            .opacity(data.value)
            .offset(x: 30 * data.invValue, y: -50 * data.invValue)
            .animation(.easeInOut(duration: 1.0).delay(Double(data.index) * 0.09), value: data.value)
            .rotationEffect(Angle.degrees(360 * data.invValue))
            .animation(.easeInOut(duration: 1.0).delay(Double(data.index) * 0.11), value: data.value)
    }
}

struct ATTwistEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATTwistEffect>()
    }
}
