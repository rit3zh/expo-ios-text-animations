
import SwiftUI


public struct ATScaleEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .scaleEffect(data.scale)
            .animation(.easeInOut(duration: 0.4).delay(Double(data.index) * 0.06), value: data.value)
    }
}

struct ATScaleEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATScaleEffect>()
    }
}
