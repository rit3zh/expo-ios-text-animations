
import SwiftUI


public struct ATTopBottomEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .offset(x: 0, y: data.invValue * -(data.size.height * 3.6) )
            .animation(.spring().delay(Double(data.index) * 0.09), value: data.value)
    }
}

struct ATTopBottomEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATTopBottomEffect>()
    }
}

