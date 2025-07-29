# 🇱🇰 Sri Lankan NIC Decoder

A modern, cross-platform Flutter application that decodes Sri Lankan National Identity Card (NIC) numbers to extract personal information including date of birth, age, gender, and more.

## ✨ Features

- **Universal Format Support**: Works with both old (10 digits + V/X) and new (12 digits) NIC formats
- **Comprehensive Information**: Extracts date of birth, weekday, age, and gender
- **Modern UI/UX**: Beautiful, intuitive interface with Material Design 3
- **Cross-Platform**: Runs on Windows, Web (Chrome/Edge), Android, and iOS
- **Input Validation**: Smart input formatting and validation
- **Copy to Clipboard**: Easy sharing of decoded information
- **Real-time Processing**: Instant decoding with smooth animations

## 🖥️ Supported Platforms

- ✅ **Windows Desktop**
- ✅ **Web (Chrome, Edge)**
- ✅ **Android** (tested on API 21+)
- ✅ **iOS** (iOS 12.0+)

## 📱 Screenshots

### Input Screen
<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/739a5a0d-5096-400d-a5d2-c91890584ed0" />


### Results Screen
<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/204ac011-9528-4dfc-8644-478ecbfbbc71" />


## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (2.17.0 or higher)
- For Windows: Visual Studio 2019 or later with C++ build tools
- For Web: Chrome or Edge browser
- For mobile: Android Studio / Xcode

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/sri-lankan-nic-decoder.git
   cd sri-lankan-nic-decoder
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the application**
   
   For Windows:
   ```bash
   flutter run -d windows
   ```
   
   For Web:
   ```bash
   flutter run -d chrome
   # or
   flutter run -d edge
   ```
   
   For Android:
   ```bash
   flutter run -d android
   ```

## 🔍 How It Works

### Supported NIC Formats

1. **Old Format** (Before 2016): `YYXXDDDDV`
   - Example: `981234567V`
   - 9 digits + V (for 20th century) or X (for 19th century)

2. **New Format** (After 2016): `YYYYXXDDDD`
   - Example: `200012345678`
   - 12 digits representing birth year and other details

### Information Extracted

- 📅 **Date of Birth**: Exact birth date
- 📆 **Day of Week**: What day you were born
- 🎂 **Age**: Current age in years
- 👤 **Gender**: Male or Female
- 📋 **Format Type**: Old or New NIC format

## 🏗️ Project Structure

```
lib/
├── controllers/
│   └── nic_controller.dart     # Business logic and state management
├── screens/
│   ├── nic_input_screen.dart   # Input interface
│   └── nic_result_screen.dart  # Results display
├── utils/
│   └── nic_decoder.dart        # NIC decoding algorithms
└── main.dart                   # App entry point
```

## 🛠️ Technologies Used

- **Flutter** - Cross-platform UI framework
- **Dart** - Programming language
- **GetX** - State management and navigation
- **Material Design 3** - Modern UI components

## 📖 NIC Decoding Logic

The application implements the official Sri Lankan NIC encoding algorithm:

1. **Date Extraction**: Decodes the embedded date information
2. **Gender Detection**: Uses the serial number range (500+ for females)
3. **Format Recognition**: Automatically detects old vs new format
4. **Validation**: Ensures NIC number follows correct patterns

## 🎨 UI/UX Features

- **Gradient Backgrounds**: Modern visual appeal
- **Smart Input Formatting**: Auto-uppercase and validation
- **Haptic Feedback**: Enhanced user interaction
- **Responsive Design**: Works on all screen sizes
- **Smooth Animations**: Page transitions and micro-interactions
- **Copy Functionality**: One-tap copying of all details

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request. For major changes, please open an issue first to discuss what you would like to change.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Sri Lankan Department of Registration of Persons for NIC format specifications
- Flutter team for the amazing framework
- Material Design team for UI guidelines

## 📞 Contact

Your Name - [@yourusername](https://linkedin.com/in/yourusername)

Project Link: [https://github.com/yourusername/sri-lankan-nic-decoder](https://github.com/yourusername/sri-lankan-nic-decoder)

---

⭐ **Star this repository if you found it helpful!**

## 🔧 Build Information

- **Flutter Version**: 3.24.0
- **Dart Version**: 3.5.0
- **Minimum Android SDK**: 21
- **Minimum iOS Version**: 12.0
- **Windows**: Supports Windows 10 and later

## 🐛 Known Issues

- None currently reported

## 🔮 Future Enhancements

- [ ] Dark mode support
- [ ] Multiple language support (Sinhala, Tamil)
- [ ] Batch processing of multiple NICs
- [ ] Export to PDF/CSV
- [ ] NIC validation API integration

## 💡 Tips for Users

1. **Old Format**: Enter 9 digits followed by V or X
2. **New Format**: Enter all 12 digits
3. **Copy Feature**: Use the copy button to share decoded information
4. **Cross-Platform**: The same app works on desktop, mobile, and web!
