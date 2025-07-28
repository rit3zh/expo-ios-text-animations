
import SwiftUI


public struct ATRandomTypoEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .modifier(ATRandomTypoAnimation(data))
            .offset(x: 6 * data.invValue, y: 0)
            .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 0.5).delay(Double(data.index) * 0.06), value: data.value)
    }
}

struct ATRandomTypoEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATRandomTypoEffect>()
    }
}
