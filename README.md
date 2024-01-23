# labhouse_test_task_radio_app

A simple radio stations playing app.

## Table of Contents
- [Features](#features)
- [How to run](#how-to-run)
- [Tested on devices](#tested-on-devices)


## Features

### Main Requirements
- [x] List of all radio stations from Spain using [RadioBrowser API](https://de1.api.radio-browser.info/)
- [x] Save radio stations to favorites on local database
- [x] Select and Play/pause radio station
- [x] Volume control

### Additional
- [x] Background playback (It's available, but very buggy at the moment)
- [x] Seek to previous/next radio station (Available in branch playlist_controls)
- [ ] Robust player error handling (Not implemented)

## How to run

1. Go through [Flutter installation](https://docs.flutter.dev/get-started/install) process if you haven't already :)
2. Clone this repository to your local machine
    ```shell
    git clone https://github.com/FeanorD/labhouse_test_task_radio_app.git
    ```
   
3. Go to the project's root directory
    ```shell
    cd labhouse_test_task_radio_app
    ```

4. Check this project Flutter SDK version in [fvm_config.json](.fvm/fvm_config.json) file. If you don't have this version installed, please install it either globally or with [fvm](https://fvm.app/).
5. To install dependencies, run `flutter pub get` or `fvm flutter pub get` depending on what you choose on the previous step.
6. Before running the app on iOS, you need to open the project in Xcode and set your team in Signing & Capabilities section.
   - Open the project in Xcode (open [Runner.xcworkspace](ios/Runner.xcworkspace) file))
   - Select the Runner project
   - Select the Runner target
   - Select the Signing & Capabilities tab
   - Select or add your team in the Team dropdown

7. Connect your device or emulator and run the app with `flutter run --release` or `fvm flutter run --release` command. 
   If you want to run the app in debug mode, just omit the `--release` flag.



## Tested on devices

- Pixel 4a API 33 (Android 13.0)
- Iphone 7 (iOS 15.7.3)