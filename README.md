# My App

A Flutter app built during my internship, demonstrating navigation, state management, API integration, local storage, form validation, and animations.

## Features

- **Home Screen** — persistent counter using local storage, navigates to Detail
- **Detail Screen** — navigates to Profile
- **Profile Screen** — fetches and displays a list of users from a public API, with loading and error handling
- **Add Item Screen** — form with validation (name and email fields), saves entries locally
- **Saved Items Screen** — displays all items saved through the Add Item form
- Smooth fade transitions between screens
- Purple-to-black gradient theme throughout

## Tech Used

- Flutter & Dart
- `http` package for API calls
- `shared_preferences` for local storage
- `Form` and `TextFormField` for input validation

## How to Run

1. Make sure Flutter SDK is installed.
2. Clone this repository.
3. Run `flutter pub get` to install dependencies.
4. Run `flutter run -d chrome` to launch the app.

## Screens

1. Home
2. Detail
3. Profile
4. Add Item
5. Saved Items