import * as React from "react";
import { requireNativeView } from "expo";
import type { NativeiOSTextAnimationsExpoModuleProps } from "./types";

export const NativeTextView: React.ComponentType<NativeiOSTextAnimationsExpoModuleProps> =
  requireNativeView<NativeiOSTextAnimationsExpoModuleProps>(
    "NativeiOSTextAnimationsExpo",
    "ExpoAnimateTextView"
  );
