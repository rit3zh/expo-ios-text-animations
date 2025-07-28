
import SwiftUI


public struct ATBlurEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .blur(radius: 20 - 20 * data.value)
            .animation(.easeInOut(duration: 0.6).delay(Double(data.index) * 0.06), value: data.value)
    }
}

struct ATBlurEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATBlurEffect>()
    }
}
