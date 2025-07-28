

import SwiftUI


public struct ATRotateEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .rotationEffect(Angle(degrees: 460 * data.invValue))
            .animation(.easeInOut.delay(Double(data.index) * 0.06), value: data.value)
    }
}

struct ATRotateEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATRotateEffect>()
    }
}
