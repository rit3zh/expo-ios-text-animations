import { StyleProp, ViewStyle } from "react-native";
export interface NativeiOSTextAnimationsExpoModuleProps {
  text: string;
  unitType?: string;
  animationType?: string;
  style?: StyleProp<ViewStyle>;
  fontSize?: number;
  animating?: boolean;
  fontColor?: string;
  animationDuration?: number;
}
export interface AnimatedTextViewProps {
  text: string;
  type?: string;
  fontSize?: number;
  style?: StyleProp<ViewStyle>;
  unit?: string;
  animating?: boolean;
  fontColor?: string;
  animationDuration?: number;
}

export enum AnimationType {
  Opacity = "opacity",
  Blur = "blur",
  BottomTop = "bottomtop",
  Offset = "offset",
  Chain = "chain",
  Drop = "drop",
  Spring = "spring",
  Typo = "typo",
  ChimeBell = "chimebell",
  Curtain = "curtain",
  Hang = "hang",
  Paper = "paper",
  RandomTypo = "randomtypo",
  Twist = "twist",
  Rotate = "rotate",
  Scale = "scale",
  Slide = "slide",
  TopBottom = "topbottom",
}

export enum AnimationUnitType {
  Words = "words",
  Letters = "letters",
}
