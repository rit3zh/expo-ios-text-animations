

import SwiftUI


public protocol ATTextAnimatable: AnimatableModifier {

    var data: ATElementData { get }
    var animatableData: Double { get }

}
