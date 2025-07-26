import { NativeModule, requireNativeModule } from 'expo';

import { NativeiOSTextAnimationsExpoModuleEvents } from './NativeiOSTextAnimationsExpo.types';

declare class NativeiOSTextAnimationsExpoModule extends NativeModule<NativeiOSTextAnimationsExpoModuleEvents> {
  PI: number;
  hello(): string;
  setValueAsync(value: string): Promise<void>;
}

// This call loads the native module object from the JSI.
export default requireNativeModule<NativeiOSTextAnimationsExpoModule>('NativeiOSTextAnimationsExpo');
