# 📱 expo-ios-text-animations

https://github.com/user-attachments/assets/c5080829-a970-4f23-a32f-a0be5ceb913c

Beautiful, native SwiftUI-powered animated text component for **React Native (Expo)** apps.
Supports a variety of animation styles like typing, drop, blur, twist, slide, and more!

## ✨ Features

- ⚡️ Smooth native animations powered by SwiftUI
- 🧩 Supports both **word** and **letter** based animations
- 🎨 Customizable text style, font size, duration, and color
- 🧱 Easy integration with Expo's custom dev client

---

## 📦 Installation

### 1. Add the package

```bash
npx expo install expo-ios-text-animations
```

### 2. Install CocoaPods

```bash
cd ios && pod install
```

### 3. Prebuild the iOS project (if not already)

```bash
npx expo prebuild --platform ios
```

### 4. Rebuild your application

```bash
pnpm ios
```

---

## 🚀 Usage

```tsx
import React from "react";
import { View } from "react-native";
import { AnimatedTextView } from "expo-ios-text-animations";

export default function App() {
  return (
    <View style={{ flex: 1, justifyContent: "center", alignItems: "center" }}>
      <AnimatedTextView
        text="SwiftUI animations in React Native!"
        type="typo"
        unit="letters"
        fontSize={24}
        fontColor="#ff5e5e"
        animationDuration={2}
        animating={true}
      />
    </View>
  );
}
```

---

## 🔧 Props

| Prop                | Type                   | Default | Description                            |
| ------------------- | ---------------------- | ------- | -------------------------------------- |
| `text`              | `string`               | —       | Text to animate                        |
| `type`              | `AnimationType`        | —       | Type of animation (see below)          |
| `unit`              | `AnimationUnitType`    | —       | Split text by `"words"` or `"letters"` |
| `fontSize`          | `number`               | `24`    | Text font size                         |
| `fontColor`         | `string`               | `#000`  | Text color                             |
| `fontWeight`        | `string`               | `"regular"` | Font weight: `"thin"`, `"light"`, `"regular"`, `"medium"`, `"semibold"`, `"bold"`, `"heavy"`, `"black"` |
| `animationDuration` | `number`               | `2`     | Duration in seconds                    |
| `animating`         | `boolean`              | `true`  | Whether animation is active            |
| `style`             | `StyleProp<ViewStyle>` | —       | Container style                        |

---

## 🌀 Supported Animation Types

```ts
enum AnimationType {
  Opacity,
  Blur,
  BottomTop,
  Offset,
  Chain,
  Drop,
  Spring,
  Typo,
  ChimeBell,
  Curtain,
  Hang,
  Paper,
  RandomTypo,
  Twist,
  Rotate,
  Scale,
  Slide,
  TopBottom,
}
```

Use them like this:

```tsx
type = "chimebell";
```

---

## 🧠 Powered By

Built natively with **SwiftUI** + integrated into React Native via **Expo Modules Core**.

---

## 🛠 Contributing

Pull requests, issues, and feedback are always welcome 🙌

---

## 📄 License

MIT © [rit3zh](https://github.com/rit3zh)
