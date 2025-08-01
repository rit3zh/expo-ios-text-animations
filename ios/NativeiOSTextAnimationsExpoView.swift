import SwiftUI
import ExpoModulesCore

internal final class AnimatedTextViewProps: ExpoSwiftUI.ViewProps {
    @Field var text: String = "AnimateText"
    @Field var unitType: String = "letters"
    @Field var animationType: String = "opacity"
    @Field var animating: Bool = false
    @Field var fontSize: Double = 16.0
    @Field var fontColor: String = "#000000"
    @Field var animationDuration: Double = 2.0
}

struct ExpoAnimateTextView: ExpoSwiftUI.WithHostingView, ExpoSwiftUIView {
    @ObservedObject var props: AnimatedTextViewProps
    @State private var animatedText: String = ""

    var body: some View {
        Group {
            switch props.animationType.lowercased() {
            case "opacity":
                AnimateText<ATOpacityEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "blur":
                AnimateText<ATBlurEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "bottomtop":
                AnimateText<ATBottomTopEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "offset":
                AnimateText<ATOffsetEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "chain":
                AnimateText<ATChainEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "drop":
                AnimateText<ATDropEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "spring":
                AnimateText<ATSpringEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "typo":
                AnimateText<ATTypoEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "chimebell":
                AnimateText<ATChimeBellEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "curtain":
                AnimateText<ATCurtainEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "hang":
                AnimateText<ATHangEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "paper":
                AnimateText<ATPaperEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "randomtypo":
                AnimateText<ATRandomTypoEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "twist":
                AnimateText<ATTwistEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "rotate":
                AnimateText<ATRotateEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "scale":
                AnimateText<ATScaleEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "slide":
                AnimateText<ATSlideEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            case "topbottom":
                AnimateText<ATTopBottomEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            default:
                AnimateText<ATOpacityEffect>(
                    $animatedText,
                    type: getUnitType(from: props.unitType),
                    animating: props.animating,
                    fontSize: props.fontSize,
                    textColor: Color(hex: props.fontColor),
                    animationDuration: props.animationDuration
                )
            }
        }
        .onAppear {
            animatedText = props.text
        }
        .onChange(of: props.text) { newText in
            animatedText = newText
        }
        .onChange(of: props.animationType) { _ in
            animatedText = ""
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                animatedText = props.text
            }
        }
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3:
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6:
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8:
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
