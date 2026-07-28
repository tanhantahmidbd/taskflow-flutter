# Taskflow

A Flutter task management app built for learning and practice with authentication flow, clean architecture, state management, and reusable UI components.

## Table of Contents

- [Features](#features)
- [Tech Stack](#tech-stack)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Roadmap](#roadmap)
- [License](#license)

## Features

- User authentication flow (Login & Register)
- Global loading state management
- Reusable loading widget
- Clean and maintainable Flutter project structure
- State management using GetX
- Task management features (upcoming)

## Tech Stack

- **Flutter**
- **Dart**
- **GetX**
- **Clean Architecture**
- **REST API (Upcoming)**

## Project Structure

```text
lib/
├── features/
│   └── auth/
│       ├── controller/
│       ├── views/
│       └── widgets/
│
├── utils/
│   └── widgets/
│       ├── global_loading.dart
│       └── loading_controller.dart
│
└── main.dart


## Installation
​Clone the repository:

git clone [https://github.com/tanhantahmidbd/taskflow.git](https://github.com/tanhantahmidbd/taskflow.git)

Navigate to the project folder:
cd taskflow

Install dependencies:
flutter pub get

Usage
​Run the application:

flutter run

Requirements:
​Flutter SDK installed
​Android Studio or VS Code
​Emulator or physical device
​Configuration
​Currently, the project does not require any additional configuration.
Future API integration will include environment configuration for backend connection and API keys.
​Roadmap
​[x] Flutter project setup
​[x] Authentication UI flow
​[x] Login & Register screens
​[x] Global loading system
​[ ] Authentication API integration
​[ ] Task management features
​[ ] Backend integration
​[ ] Push notifications
​[ ] App optimization
​License
​This project is licensed under the MIT License - see the LICENSE file for details.
​Made with ❤️ by tanhantahmidbd

