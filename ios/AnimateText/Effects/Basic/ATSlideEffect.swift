
import SwiftUI


public struct ATSlideEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .offset(x: data.size.width * data.invValue, y: 0)
            .animation(.spring().delay(Double(data.index) * 0.05), value: data.value)
    }
}

struct ATSlideEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATSlideEffect>()
    }
}
