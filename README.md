# Code94Labs_currency_converter
Currency converter application for interview


email - isuriadhikari@gmail.com
 API key for currency converter = 'a3c06e312c50b966566a03e2';



# Currency Converter App


A Flutter application that converts currencies using real-time exchange rates. Country flags alongside currency codes, and a customizable list of target currencies.

## 🛠️ Features

- **Real-Time Currency Conversion:** Fetches up-to-date exchange rates from a reliable API.
- **Country Flags:** Displays country flags next to currency codes for visual clarity.
- **Customizable Target Currencies:** Users can add or remove currencies they wish to monitor.

- **API Integration**: Fetches live exchange rates from [ExchangeRate-API](https://www.exchangerate-api.com/).
- **MVVM Architecture**: Implements the Model-View-ViewModel pattern for clean separation of concerns.
- **State Management**: Uses the Provider package for efficient state management.
- **Local Persistence**: Saves user preferences using SharedPreferences.
- **User-Friendly UI**: Intuitive interface with the ability to add and remove target currencies.



## 📝 Getting Started

Follow these instructions to set up and run the project on your local machine.

### 🎯 Prerequisites

- **Flutter SDK:** Ensure you have Flutter installed. [Installation Guide](https://flutter.dev/docs/get-started/install)
- **Dart SDK:** Comes bundled with Flutter.
- **CocoaPods:** Required for iOS builds.

### 🛠️ Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/IsuriAdhikari/Code94Labs_currency_converter.git
   cd currency_converter_app

2. For iOS get install  PODS before run the application
   cd iOS
   pod install

3. Android has an APK file for your convenience in testing