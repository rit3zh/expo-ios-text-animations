

import SwiftUI


public struct ATOpacityEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .animation(.easeInOut.delay(Double(data.index) * 0.06), value: data.value)
    }
}

struct ATOpacityEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATOpacityEffect>()
    }
}
