import 'package:injectable/injectable.dart';
import 'package:just_audio/just_audio.dart';

@module
abstract class CoreModule {
  @lazySingleton
  AudioPlayer getAudioPlayer() => AudioPlayer();
}