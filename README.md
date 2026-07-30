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

- User authentication (Login & Register)
- Authentication API integration
- Local storage management
- Form validation
- Task CRUD API integration
- Category CRUD API integration
- Bottom navigation
- Global loading state management
- Reusable loading widget
- Clean and maintainable Flutter project structure
- State management using GetX

## Tech Stack

- **Flutter**
- **Dart**
- **GetX**
- **Clean Architecture**
- **REST API**
- **Local Storage**

## Project Structure
```text
lib/
├── app.dart
├── main.dart
│
├── core/
│   ├── constants/
│   ├── routes/
│   └── data/
│
├── features/
│   ├── auth/
│   │   ├── views/
│   │   ├── controller/
│   │   ├── apis/
│   │   ├── models/
│   │   └── widgets/
│   │
│   ├── home/
│   │   └── views/
│   │
│   ├── profile/
│   │
│   └── task/
│       ├── views/
│       ├── controllers/
│       ├── apis/
│       └── models/
│
└── utils/
    ├── helper/
    ├── widgets/
    └── validator/
```

## Installation

Clone the repository:
```bash
git clone https://github.com/tanhantahmidbd/taskflow.git
```

Navigate to the project folder:
```bash
cd taskflow
```
Install dependencies:
```bash
flutter pub get
```

## Usage
Run the application:
```bash
flutter run
```
Requirements:
- Flutter SDK installed
- Android Studio or VS Code
- Emulator or physical device

## Configuration

Currently, no additional configuration is required.

Future API integration will include environment configuration for backend connection and API keys.

## Roadmap

- [x] Flutter project setup
- [x] Authentication UI flow
- [x] Login & Register screens
- [x] Authentication API integration
- [x] Local storage management
- [x] Form validation
- [x] Global loading system
- [x] Bottom navigation
- [x] Task API integration
- [x] Category API integration
- [ ] Task UI implementation
- [ ] Category UI implementation
- [ ] Backend integration improvements
- [ ] Push notifications
- [ ] App optimization

## License
- This project is licensed under the MIT License - see the LICENSE file for details.
- Made with ❤️ by tanhantahmidbd

