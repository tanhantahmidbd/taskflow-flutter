Taskflow

A Flutter task management app created for learning and practice.

About The Project

Taskflow is a Flutter-based task management application built to practice clean architecture, state management, authentication flow, and reusable UI components.

Features

- User authentication flow (Login & Register)
- Global loading state management
- Reusable loading widget
- Clean and maintainable Flutter project structure
- Task management features (upcoming)

Project Structure

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

Getting Started

Prerequisites

- Flutter SDK installed
- Android Studio or VS Code
- Emulator or physical device

Installation

Clone the repository:

git clone https://github.com/tanhantahmidbd/taskflow-flutter.git

Navigate to the project folder:

cd taskflow

Install dependencies:

flutter pub get

Run the application:

flutter run

Development Progress

- ✅ Flutter project setup
- ✅ Authentication UI flow
- ✅ Login & Register screens
- ✅ Global loading system
- ⏳ Authentication API integration
- ⏳ Task management features

Resources

- "Flutter Documentation" (https://docs.flutter.dev/)
- "Flutter Learning Resources" (https://docs.flutter.dev/reference/learning-resources)

License

This project is created for learning and practice purposes.