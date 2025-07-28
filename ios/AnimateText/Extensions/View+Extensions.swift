
import SwiftUI

extension View {
    func takeSize(_ size: Binding<CGSize>) -> some View {
        self.modifier(SizeModifier(size))
    }
}

struct SizeModifier: ViewModifier {

    @Binding var size: CGSize

    init(_ size: Binding<CGSize>) {
        _size = size
    }

    func body(content: Content) -> some View {
        content
            .background(
                GeometryReader { proxy in
                    Color.clear.preference(key: SizePreferenceKey.self, value: proxy.size)
                }
            )
            .onPreferenceChange(SizePreferenceKey.self) { preference in
                self.size = preference
            }
    }
}

struct SizePreferenceKey: PreferenceKey {
    typealias V = CGSize
    static var defaultValue: V = .zero
    static func reduce(value: inout V, nextValue: () -> V) {
        value = nextValue()
    }
}
