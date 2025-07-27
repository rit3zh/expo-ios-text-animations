import * as React from "react";
import type { AnimatedTextViewProps } from "./types";
import { NativeTextView } from "./NativeView.ios";

const AnimatedTextView: React.FC<AnimatedTextViewProps> &
  React.FunctionComponent<AnimatedTextViewProps> = (
  props: AnimatedTextViewProps
): React.ReactNode & React.JSX.Element => {
  return (
    <NativeTextView
      fontSize={props.fontSize}
      text={props.text}
      animating={props.animating}
      animationType={props.type}
      unitType={props.unit}
      fontColor={props.fontColor}
      animationDuration={54.5}
      style={
        props.style ?? {
          width: 100,
          height: 100,
        }
      }
    />
  );
};
export { AnimatedTextView };
