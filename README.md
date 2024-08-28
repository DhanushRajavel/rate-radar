
# Rate Radar (Metal Price Tracker App)

The Metal Price Tracker App is a mobile application developed using Flutter and Dart. It provides users with up-to-date metal prices, specifically focusing on gold prices. The app fetches real-time data from [metalpricetapi.com](https://www.metalpricetapi.com) to deliver accurate and reliable information to the users.

## Features

- **Real-Time Metal Prices**: Fetches current gold prices from metalpricetapi.com.
- **User-Friendly Interface**: Easy-to-navigate UI built with Flutter's Material Design.
- **Multi-Country Support**: Displays gold prices for various countries.

## Technologies Used

- **Flutter**: For building the UI of the app.
- **Dart**: Programming language used for app development.
- **API Integration**: Utilizes [metalpricetapi.com](https://www.metalpricetapi.com) to fetch real-time metal prices.

## Getting Started

To get a local copy up and running, follow these simple steps:

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Dart SDK: Comes with Flutter installation.
- Metalpricetapi.com API Key: [Sign up](https://www.metalpricetapi.com) to get an API key.

### Installation

1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/metal-price-tracker.git
   ```

2. **Important Note**: If you are unable to provide all the Flutter files and folders, but have given your `lib` folder and the images used in the app, follow these steps:

   - **Create a New Flutter Project**:
     ```bash
     flutter create metal_price_tracker
     ```

   - **Replace the `lib` and `images` Folders**:
     Replace the newly created `lib` folder and `images` folder with the ones you have provided.

   - **Add Assets to `pubspec.yaml`**:
     Ensure that your `pubspec.yaml` file includes the following under the `assets` section:
     ```yaml
     flutter:
       assets:
         - images/
     ```

   - **Install Dependencies**:
     Navigate to your project directory and install dependencies:
     ```bash
     flutter pub get
     ```

   - **Run the App**:
     Launch the app using:
     ```bash
     flutter run
     ```

3. Replace the API key placeholder in the configuration file with your actual API key:
   ```dart
   const String apiKey = 'YOUR_API_KEY';
   ```

By following these steps, you can successfully set up the Metal Price Tracker App using the provided `lib` and `images` folders.

## Usage

1. Open the app on your device.
2. View the latest gold prices for selected countries.
3. Use the navigation options to explore other features.

## API Integration

This app uses the [Metal Price API](https://www.metalpricetapi.com) to fetch the latest prices. Make sure to add your API key in the configuration file:

1. Locate the API key section in your project (e.g., in `lib/config.dart`).
2. Replace the placeholder with your actual API key.

```dart
const String apiKey = 'YOUR_API_KEY';
```

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/YourFeature
   ```
3. Commit your changes:
   ```bash
   git commit -m 'Add some feature'
   ```
4. Push to the branch:
   ```bash
   git push origin feature/YourFeature
   ```
5. Open a pull request.

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Dhanush Rajavel - [LinkedIn](www.linkedin.com/in/dhanush-rajavel-070ba7225) - dhanushrajavel@gmail.com

Project Link: [GitHub Repository](https://github.com/DhanushRajavel/metal-price-tracker)
```

This README now includes the necessary instructions for users who might only have the `lib` and `images` folders available.
