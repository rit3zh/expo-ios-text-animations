import ExpoModulesCore

public class NativeiOSTextAnimationsExpoModule: Module {
  
  public func definition() -> ModuleDefinition {
    // The module will be accessible from `requireNativeModule('NativeiOSTextAnimationsExpo')` in JavaScript.
    Name("NativeiOSTextAnimationsExpo")

      View(ExpoAnimateTextView.self)

    
  }
}
