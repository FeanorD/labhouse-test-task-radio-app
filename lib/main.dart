import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'src/config/di/injection.dart';
import 'src/core/bloc/global_blocs_provider.dart';
import 'src/modules/home/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: false,
    androidStopForegroundOnPause: false,
  );

  runApp(const RadioApp());
}

class RadioApp extends StatelessWidget {
  const RadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: const Color(0xffC0D0C6),
      brightness: Brightness.dark,
    );

    return GlobalBlocsProvider(
      child: MaterialApp(
        title: 'Radio Stations App',
        theme: ThemeData(
          colorScheme: colorScheme,
          useMaterial3: true,
          navigationBarTheme: const NavigationBarThemeData(
            // backgroundColor: colorScheme.background,
            elevation: 2,
          ),
          bottomSheetTheme: const BottomSheetThemeData(
            // backgroundColor: colorScheme.background,
            elevation: 2,
            shape: RoundedRectangleBorder(),
          ),
          // colorSchemeSeed: Color(0xFF061A29),
        ),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
