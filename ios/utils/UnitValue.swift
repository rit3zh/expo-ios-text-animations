//
//  UnitValue.swift
//  Pods
//
//  Created by rit3zh CX on 7/27/25.
//

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

