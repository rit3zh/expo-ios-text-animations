import * as React from 'react';

import { NativeiOSTextAnimationsExpoViewProps } from './NativeiOSTextAnimationsExpo.types';

export default function NativeiOSTextAnimationsExpoView(props: NativeiOSTextAnimationsExpoViewProps) {
  return (
    <div>
      <iframe
        style={{ flex: 1 }}
        src={props.url}
        onLoad={() => props.onLoad({ nativeEvent: { url: props.url } })}
      />
    </div>
  );
}
