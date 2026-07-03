# My App

A Flutter app built during my internship, demonstrating navigation, state management, API integration, local storage, form validation, and animations.

## Features

- **Home Screen** — persistent counter using local storage
- **Detail Screen** — navigates to Profile
- **Profile Screen** — fetches users from a public API with loading and error handling
- **Add Item Screen** — form with name and email validation, saves entries locally
- **Saved Items Screen** — displays all saved entries

- Smooth fade transitions between all screens
- Purple-to-black gradient theme throughout
- Widget tests included

## Tech Used

- Flutter & Dart
- `http` package for API calls
- `shared_preferences` for local storage
- `Form` and `TextFormField` for input validation

## How to Run

1. Make sure Flutter SDK is installed.
2. Clone this repository.
3. Run `flutter pub get` to install dependencies.
4. Run `flutter run -d chrome` to launch in browser.

## APK

The release APK is located at:
`build/app/outputs/flutter-apk/app-release.apk`

## Screenshots

### Home
![Home](screenshots/home.png)

### Detail
![Detail](screenshots/detail.png)

### Profile
![Profile](screenshots/profile.png)

### Add Item
![Add Item](screenshots/add_item.png)

### Saved Items
![Saved Items](screenshots/saved_items.png)