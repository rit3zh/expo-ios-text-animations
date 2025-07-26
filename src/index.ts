// Reexport the native module. On web, it will be resolved to NativeiOSTextAnimationsExpoModule.web.ts
// and on native platforms to NativeiOSTextAnimationsExpoModule.ts
export { default } from './NativeiOSTextAnimationsExpoModule';
export { default as NativeiOSTextAnimationsExpoView } from './NativeiOSTextAnimationsExpoView';
export * from  './NativeiOSTextAnimationsExpo.types';
