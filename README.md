# E-Code Guide

A Flutter mobile application that helps users quickly look up and learn about common food additives (E-codes).

## 🚀 Features

* **Browse Additives**: View a curated list of common E-codes with name, type, risk level, and description.
* **Real-time Search**: Instantly filter additives by E-code or name using the search bar.
* **Detail View**: Tap any additive card to see detailed information on a dedicated screen.
* **Modern UI**: Built with Material 3 design principles for a clean, intuitive experience.

## 🎯 Getting Started

### Prerequisites

* Flutter SDK (>=3.7.0)
* Dart SDK (>=2.18.0)
* An IDE or editor like VS Code or Android Studio
* A connected device or emulator

### Installation & Run

1. **Clone Repository**

   ```bash
   git clone https://github.com/bektas-sari/ecode_guide.git
   cd ecode_guide
   ```
2. **Install Dependencies**

   ```bash
   flutter pub get
   ```
3. **Run the App**

   ```bash
   flutter run
   ```

## 📂 Project Structure

```
lib/
├── main.dart              # Entry point of the application
├── data/
│   └── additives.dart     # Mock data source for E-codes
├── models/
│   └── additive.dart      # Data model for a food additive
├── screens/
│   ├── home_screen.dart   # List & search interface
│   └── detail_screen.dart # Detailed additive information view
└── widgets/
    └── additive_card.dart # Reusable card widget for list items
```

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to:

* Fork the repository
* Create a new branch (`git checkout -b feature-name`)
* Commit your changes (`git commit -m 'Add some feature'`)
* Push to the branch (`git push origin feature-name`)
* Open a Pull Request

## 📄 License

This project is licensed under the MIT License.

## 📞 Contact

**Bektas Sarı**

* Email: [bektas.sari@gmail.com](mailto:bektas.sari@gmail.com)
* GitHub: [bektas-sari](https://github.com/bektas-sari)
* LinkedIn: [bektas-sari](https://www.linkedin.com/in/bektas-sari)
