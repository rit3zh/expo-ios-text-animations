import { Pressable, SafeAreaView, StyleSheet, Text, View } from "react-native";
import {
  AnimatedTextView,
  AnimationType,
  AnimationUnitType,
} from "expo-ios-text-animations";
import { useState } from "react";

const TEXT: string = `Expo + SwiftUI`;

export default function App() {
  const [isAnimating, setIsAnimating] = useState(true);
  const [selectedAnimation, setSelectedAnimation] = useState(
    AnimationType.Chain
  );
  const [selectedUnit, setSelectedUnit] = useState(AnimationUnitType.Letters);

  const toggleAnimation = () => setIsAnimating(!isAnimating);

  const cycleAnimation = () => {
    const animations = Object.values(AnimationType);
    const currentIndex = animations.indexOf(selectedAnimation);
    const nextIndex = (currentIndex + 1) % animations.length;
    setSelectedAnimation(animations[nextIndex]);
  };

  const toggleUnit = () => {
    setSelectedUnit(
      selectedUnit === AnimationUnitType.Letters
        ? AnimationUnitType.Words
        : AnimationUnitType.Letters
    );
  };

  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.content}>
        <AnimatedTextView
          text={TEXT}
          type={selectedAnimation}
          animating={isAnimating}
          fontSize={32}
          fontColor="#ffffff"
          unit={selectedUnit}
        />

        <Text style={styles.subtitle}>
          {selectedAnimation.toUpperCase()} · {selectedUnit.toUpperCase()}
        </Text>
      </View>

      <View style={styles.controls}>
        <Pressable
          style={[styles.button, styles.primaryButton]}
          onPress={toggleAnimation}
        >
          <Text style={styles.buttonText}>
            {isAnimating ? "Pause" : "Play"}
          </Text>
        </Pressable>

        <Pressable
          style={[styles.button, styles.secondaryButton]}
          onPress={cycleAnimation}
        >
          <Text style={[styles.buttonText, styles.secondaryText]}>
            Next Animation
          </Text>
        </Pressable>

        <Pressable
          style={[styles.button, styles.tertiaryButton]}
          onPress={toggleUnit}
        >
          <Text style={[styles.buttonText, styles.tertiaryText]}>
            {selectedUnit === AnimationUnitType.Letters
              ? "→ Words"
              : "→ Letters"}
          </Text>
        </Pressable>
      </View>
    </SafeAreaView>
  );
}

const styles = StyleSheet.create({
  container: {
    backgroundColor: "#0a0a0a",
    flex: 1,
  },
  content: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    paddingHorizontal: 24,
  },
  subtitle: {
    color: "#666666",
    fontSize: 12,
    fontWeight: "500",
    letterSpacing: 2,
    marginTop: 16,
    textAlign: "center",
  },
  controls: {
    paddingHorizontal: 24,
    paddingBottom: 48,
    gap: 12,
  },
  button: {
    height: 54,
    borderRadius: 27,
    justifyContent: "center",
    alignItems: "center",
    shadowColor: "#000",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.25,
    shadowRadius: 8,
    elevation: 4,
  },
  primaryButton: {
    backgroundColor: "#ffffff",
  },
  secondaryButton: {
    backgroundColor: "transparent",
    borderWidth: 1,
    borderColor: "#333333",
  },
  tertiaryButton: {
    backgroundColor: "transparent",
  },
  buttonText: {
    fontSize: 16,
    fontWeight: "600",
    color: "#000000",
  },
  secondaryText: {
    color: "#ffffff",
  },
  tertiaryText: {
    color: "#666666",
    fontSize: 14,
  },
});
