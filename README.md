# Personal Profile App 📱

A modern, clean, and interactive Flutter application showcasing a personal student profile. Built using Flutter and Material 3 design principles, featuring clean folder architecture and reusable widget design.

---

## 🌟 Key Features

*   **Premium Visuals & Layout**: Styled with custom Indigo and Emerald colors, smooth shadows, and modern typography.
*   **Detailed Information Cards**: Custom-made cards displaying:
    *   **About Me**: A personal bio section.
    *   **Academic Major**: Structured details (University, Degree, Graduation, GPA).
    *   **Skills & Tech Stack**: A wrap of colorful tech tags.
*   **Interactive Contact Button**: Launches a beautiful bottom sheet showcasing email, phone, LinkedIn, and GitHub links.
*   **Responsive & Scrollable**: Fits perfectly on various screen sizes and allows smooth scrolling.
*   **Clean Architecture**: Organized directories and reusable components.

---

## 📁 Directory Structure

```text
lib/
├── main.dart                 # Application entry point & theme setup
├── screens/
│   └── profile_screen.dart   # Main profile screen container & interactive logic
└── widgets/
    └── info_card.dart        # Reusable custom card widget for profile sections
```

---

## 🚀 Getting Started

### Prerequisites

*   [Flutter SDK](https://docs.flutter.dev/get-started/install) installed on your machine.
*   An editor of choice (VS Code or Android Studio).

### Installation & Run

1.  Clone the repository:
    ```bash
    git clone https://github.com/your-username/github_training_project.git
    cd github_training_project
    ```

2.  Fetch dependency packages:
    ```bash
    flutter pub get
    ```

3.  Run the application locally on your simulator, emulator, or connected physical device:
    ```bash
    flutter run
    ```

---

## 💡 Tech Stack & Design Decisions

*   **Material 3**: Enabled modern styling variables and system tokens.
*   **Theme Seed Color**: Initialized with `Color(0xFF6366F1)` (Indigo) to yield automated harmonized light palette tones.
*   **Custom Bottom Sheet**: Developed modal options to keep standard dependencies lean without relying on third-party links for demoing email/social navigation.
