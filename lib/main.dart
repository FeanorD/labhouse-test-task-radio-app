import 'package:flutter/material.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'src/config/di/injection.dart';
import 'src/core/bloc/global_blocs_provider.dart';
import 'src/modules/home/screens/home_screen.dart';
import 'src/modules/home/screens/home_screen_2.dart';

Future<void> main() async {
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
    return GlobalBlocsProvider(
      child: MaterialApp(
        title: 'Radio Stations App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff52BEBE), brightness: Brightness.light),
          useMaterial3: true,

          // colorSchemeSeed: Color(0xFF061A29),
        ),
        // themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        home: HomeScreen2(),
      ),
    );
  }
}
