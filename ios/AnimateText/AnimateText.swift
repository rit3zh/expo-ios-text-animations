import SwiftUI


public struct AnimateText<E: ATTextAnimateEffect>: View {

    @Binding private var text: String
    var type: ATUnitType = .letters
    var userInfo: Any? = nil
    var animating: Bool = false
    var fontSize: Double? = 16.0
    var textColor: Color = .black
    var animationDuration: Double = 2.0


    @State private var elements: Array<String> = []
    @State private var value: Double = 0
    @State private var toggle: Bool = false
    @State private var isChanged: Bool = false

    @State private var size: CGSize = .zero


    @State private var animationStartTime: Date?
    @State private var pausedAtValue: Double = 0
    @State private var totalPausedDuration: TimeInterval = 0
    @State private var lastPauseTime: Date?



    public init(_ text: Binding<String>, type: ATUnitType = .letters, userInfo: Any? = nil, animating: Bool = false, fontSize: Double = 16.0, textColor: Color = .black, animationDuration: Double = 2.0) {
        _text = text
        self.type = type
        self.userInfo = userInfo
        self.animating = animating
        self.fontSize = fontSize
        self.textColor = textColor
        self.animationDuration = animationDuration
    }

    public var body: some View {
        ZStack(alignment: .leading) {
            if !isChanged {
                Text(text)
                    .font(.system(size: fontSize ?? 16.0))
                    .lineLimit(1)
                    .takeSize($size).foregroundStyle(textColor)
            } else {
                HStack(spacing: 0) {
                    ForEach(Array(elements.enumerated()), id: \.offset) { index, element in
                        let data = ATElementData(element: element,
                                                 type: self.type,
                                                 index: index,
                                                 count: elements.count,
                                                 value: value,
                                                 size: size)
                        if toggle {
                            Text(element).font(.system(size: fontSize ?? 16.0)).modifier(E(data, userInfo)).foregroundStyle(textColor)
                        } else {
                            Text(element).font(.system(size: fontSize ?? 16.0)).modifier(E(data, userInfo)).foregroundStyle(textColor)
                        }
                    }
                }
                .fixedSize(horizontal: true, vertical: false)
            }
        }
        .onChange(of: text) { _ in
            resetAnimation()
            getText(text)
            toggle.toggle()
            self.isChanged = true

            if animating {
                startAnimation()
            }
        }
        .onChange(of: animating) { newAnimating in
            if newAnimating {
                resumeAnimation()
            } else {
                pauseAnimation()
            }
        }
    }

    private func resetAnimation() {
        value = 0
        pausedAtValue = 0
        totalPausedDuration = 0
        animationStartTime = nil
        lastPauseTime = nil
    }

    private func startAnimation() {
        animationStartTime = Date()
        let remainingDuration = animationDuration * (1.0 - pausedAtValue)

        withAnimation(.easeInOut(duration: remainingDuration)) {
            value = 1.0
        }
    }

    private func resumeAnimation() {
        guard isChanged else { return }

        if let lastPause = lastPauseTime {
            totalPausedDuration += Date().timeIntervalSince(lastPause)
        }

        startAnimation()
    }

    private func pauseAnimation() {
        lastPauseTime = Date()


        if let startTime = animationStartTime {
            let elapsed = Date().timeIntervalSince(startTime) - totalPausedDuration
            pausedAtValue = min(elapsed / animationDuration, 1.0)


            withAnimation(.none) {
                value = pausedAtValue
            }
        }
    }

    private func getText(_ text: String) {
        switch type {
        case .letters:
            self.elements = text.map { String($0) }
        case .words:
            var elements = [String]()
            text.components(separatedBy: " ").forEach{
                elements.append($0)
                elements.append(" ")
            }
            elements.removeLast()
            self.elements = elements
        }
    }
}
