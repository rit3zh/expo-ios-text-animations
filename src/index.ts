// Reexport the native module. On web, it will be resolved to NativeiOSTextAnimationsExpoModule.web.ts
// and on native platforms to NativeiOSTextAnimationsExpoModule.ts

export { AnimatedTextView } from "./AnimatedText.ios";
export {
  AnimatedTextViewProps,
  AnimationType,
  AnimationUnitType,
} from "./types";
