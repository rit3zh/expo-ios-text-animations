

import SwiftUI

public struct ATTypoEffect: ATTextAnimateEffect {

    public var data: ATElementData
    public var userInfo: Any?

    public var baseText: String = "-"

    public init(_ data: ATElementData, _ userInfo: Any?) {
        self.data = data
        self.userInfo = userInfo
        if let info = userInfo as? [String: Any] {
            baseText = info["base"] as! String
        }
    }

    public func body(content: Content) -> some View {
        content
            .modifier(ATRandomTypoAnimation(data, base: baseText))
            .offset(x: 6 * data.invValue, y: 0)
            .animation(.spring(response: 0.3, dampingFraction: 0.7, blendDuration: 0.5).delay(Double(data.index) * 0.06), value: data.value)
    }
}

struct ATTypoEffect_Previews: PreviewProvider {
    static var previews: some View {
        ATAnimateTextPreview<ATTypoEffect>()
    }
}
