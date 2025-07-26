import { registerWebModule, NativeModule } from 'expo';

import { NativeiOSTextAnimationsExpoModuleEvents } from './NativeiOSTextAnimationsExpo.types';

class NativeiOSTextAnimationsExpoModule extends NativeModule<NativeiOSTextAnimationsExpoModuleEvents> {
  PI = Math.PI;
  async setValueAsync(value: string): Promise<void> {
    this.emit('onChange', { value });
  }
  hello() {
    return 'Hello world! 👋';
  }
}

export default registerWebModule(NativeiOSTextAnimationsExpoModule, 'NativeiOSTextAnimationsExpoModule');
