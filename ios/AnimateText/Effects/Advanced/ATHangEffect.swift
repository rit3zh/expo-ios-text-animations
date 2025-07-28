
import SwiftUI


public struct ATHangEffect: ATTextAnimateEffect {

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
            .rotation3DEffect(Angle(degrees: 180 * data.invValue), axis: (x: 0, y: 1, z: 1), anchor: .top)
            .animation(.spring(response: 0.5, dampingFraction: 0.4, blendDuration: 0.9).delay(Double(data.index) * 0.08), value: data.value)
    }
}

struct ATHangEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATHangEffect>()
    }
}
