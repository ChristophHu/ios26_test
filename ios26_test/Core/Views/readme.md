# views

This folder contains the view components used in the iOS26 application. Each view is responsible for rendering a specific part of the user interface and handling user interactions. The views are built using SwiftUI, which allows for a declarative approach to UI development.

## structure
- **Components**: Reusable UI components that can be used across different views.
- **Screens**: Full-screen views that represent different pages or sections of the application.
- **Modifiers**: Custom view modifiers that can be applied to views for consistent styling and behavior
- **Extensions**: Extensions to SwiftUI views that add additional functionality or convenience methods.

## usage
To use a view component, simply import the necessary file and instantiate the view within your SwiftUI hierarchy. For example:

```swift
import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomComponent()
    }
}
```
