

import SwiftUI


public struct ATPaperEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .offset(x: data.size.height * data.invValue)
            .animation(.spring().delay(Double(data.index) * 0.06), value: data.value)
            .rotation3DEffect(Angle(degrees: -180 * data.invValue), axis: (x: 0, y: 1, z: 0), anchor: .leading, anchorZ: 0.5, perspective: 0.5)
            .animation(.easeInOut.delay(Double(data.index) * 0.05), value: data.value)
    }
}

struct ATPaperEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATPaperEffect>()
    }
}
