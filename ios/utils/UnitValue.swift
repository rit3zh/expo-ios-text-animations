
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

