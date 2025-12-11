# domain
This directory contains the core domain logic for the application. It includes entities, value objects, and domain services that encapsulate the business rules and behaviors of the system.

## structure

- **Entities**: Classes that represent the main business objects in the domain, such as User, Product, and Order.
- **ValueObjects**: Immutable objects that represent specific values in the domain, such as Money and Address.
- **Services**: Domain services that contain business logic that doesn't naturally fit within an entity or value object.
- **Repositories**: Interfaces for data access, allowing for separation of domain logic from data storage concerns.
- **Specifications**: Classes that encapsulate business rules and criteria for querying entities.
- **Extensions**: Extensions to enhance domain functionality.

## usage

To use the domain components, import the necessary files and instantiate the entities, value objects, or services as needed. For example:

```swift
import Foundation

struct UserDefaultKeys {
    static let isDarkMode = "isDarkMode"
}
```

```swift
import SwiftUI

@main
struct ios26_testApp: App {
    @AppStorage(UserDefaultKeys.isDarkMode) private var isDarkMode: Bool = true
    var body: some Scene {
        WindowGroup {
            AppStartingView()
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
```
