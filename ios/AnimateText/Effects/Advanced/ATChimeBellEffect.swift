

import SwiftUI


public struct ATChimeBellEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .animation(.easeIn.delay(Double(data.index) * 0.1), value: data.value)
            .rotation3DEffect(Angle(degrees: 180 * data.invValue), axis: (x: 1, y: 0, z: 0), anchor: .top, anchorZ: 0, perspective: 0.7)
            .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0.7).delay(Double(data.index) * 0.08), value: data.value)
    }
}

struct ATChimeBellEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATChimeBellEffect>()
    }
}
