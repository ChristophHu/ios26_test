# viewmodels
This directory contains the ViewModel classes used in the application. ViewModels are responsible for managing the data and business logic for the views, ensuring a clear separation of concerns between the UI and data layers.

## structure
- **BaseViewModel.swift**: A base class for all ViewModels, providing common functionality
- **UserViewModel.swift**: Manages user-related data and operations
- **ProductViewModel.swift**: Handles product data and business logic
- **OrderViewModel.swift**: Manages order processing and related data
- **Extensions**: Contains extensions to enhance ViewModel functionality

## usage
To use a ViewModel, import the necessary file and instantiate the ViewModel within your view. You can then bind the ViewModel's properties to your SwiftUI views. For example:

```swift
import SwiftUI

struct ContentView: View {
    @StateObject private var userViewModel = UserViewModel()
    
    var body: some View {
        VStack {
            Text("User Name: \(userViewModel.userName)")
            Button("Load User") {
                userViewModel.loadUser()
            }
        }
    }
}
```
