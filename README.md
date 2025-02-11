# VIPER Architecture SwiftUI Project

## Overview
This project demonstrates the implementation of the **VIPER architecture** in an iOS application built with **SwiftUI**. The project showcases modularization, scalability, and maintainability, leveraging the VIPER pattern to create a clean separation of concerns.

### Key Features:
- **VIPER Architecture**: Separation of concerns between View, Interactor, Presenter, Entity, and Router.
- **SwiftUI**: Declarative UI framework for creating modern, responsive user interfaces.
- **Drag & Drop**: Implemented a drag-and-drop list for dynamic reordering of items.
- **LinkedIn Sharing**: Integrated functionality to share content on **LinkedIn** via the share sheet and URL schemes.
- **Custom UI**: SwiftUI views that bind to **ObservableObject**, enabling seamless state management.

## Architecture

### VIPER Structure:
1. **View**: Displays the UI and interacts with the user.
2. **Interactor**: Handles the business logic, fetching and processing data.
3. **Presenter**: Manages the communication between View and Interactor, and formats data for display.
4. **Entity**: Defines the data models used in the app.
5. **Router**: Manages navigation and routes between different views.

### Why VIPER?
- **Modular**: Each component (View, Presenter, Interactor, etc.) is independent, which makes the app easier to scale and maintain.
- **Testable**: By separating concerns, each component can be tested independently.
- **Maintainable**: Clear structure helps in debugging, maintaining, and extending the app.

## Getting Started

### Prerequisites
Make sure you have the following installed:
- **Xcode** (latest version)
- **CocoaPods** (if you use third-party libraries)
- **SwiftUI** (iOS 13.0+)

