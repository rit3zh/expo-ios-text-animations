import { requireNativeView } from 'expo';
import * as React from 'react';

import { NativeiOSTextAnimationsExpoViewProps } from './NativeiOSTextAnimationsExpo.types';

const NativeView: React.ComponentType<NativeiOSTextAnimationsExpoViewProps> =
  requireNativeView('NativeiOSTextAnimationsExpo');

export default function NativeiOSTextAnimationsExpoView(props: NativeiOSTextAnimationsExpoViewProps) {
  return <NativeView {...props} />;
}
