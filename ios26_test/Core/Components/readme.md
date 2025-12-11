# components

This directory contains reusable UI components that can be used throughout the iOS26 application. These components are built using SwiftUI and are designed to be modular and customizable.

## structure
- **Buttons**: Custom button components with various styles and behaviors.
- **TextFields**: Input fields for user text entry with validation and styling.
- **Cards**: Card-style views for displaying grouped content.
- **Lists**: Custom list views for displaying collections of data.
- **Modals**: Reusable modal views for displaying content in a popup style.

## usage

To use a component, simply import the necessary file and instantiate the component within your SwiftUI hierarchy. For example:

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomButton(title: "Click Me") {
            print("Button tapped!")
        }
    }
}
```
