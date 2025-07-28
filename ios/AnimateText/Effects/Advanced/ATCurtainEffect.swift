import SwiftUI


public struct ATCurtainEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
    }

    public func body(content: Content) -> some View {
        content
            .opacity(data.value)
            .rotationEffect(Angle.degrees(80) * data.invValue, anchor: .topLeading)
            .animation(.spring().delay(Double(data.index) * 0.08), value: data.value)
    }
}

struct ATCurtainEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATCurtainEffect>()
    }
}
