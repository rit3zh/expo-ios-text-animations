import SwiftUI

func getUnitType(from typeString: String) -> ATUnitType {
    switch typeString.lowercased() {
    case "letters":
        return .letters
    case "words":
        return .words
    default:
        return .letters
    }
}

func getFontWeight(from weightString: String) -> Font.Weight {
    switch weightString.lowercased() {
    case "thin":
        return .thin
    case "ultralight":
        return .ultraLight
    case "light":
        return .light
    case "regular":
        return .regular
    case "medium":
        return .medium
    case "semibold":
        return .semibold
    case "bold":
        return .bold
    case "heavy":
        return .heavy
    case "black":
        return .black
    default:
        return .regular
    }
}

