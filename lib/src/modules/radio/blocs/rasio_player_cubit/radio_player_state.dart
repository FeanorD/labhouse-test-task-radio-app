part of 'radio_player_cubit.dart';

class RadioPlayerState {
  const RadioPlayerState({
    required this.isPlaying,
    required this.isAudioLoading,
    required this.volume,
  });

  factory RadioPlayerState.initial() {
    return const RadioPlayerState(
      isPlaying: false,
      isAudioLoading: false,
      volume: 1.0,
    );
  }

  final bool isPlaying;
  final bool isAudioLoading;
  final double volume;

  RadioPlayerState copyWith({
    bool? isPlaying,
    bool? isAudioLoading,
    double? volume,
  }) {
    return RadioPlayerState(
      isPlaying: isPlaying ?? this.isPlaying,
      isAudioLoading: isAudioLoading ?? this.isAudioLoading,
      volume: volume ?? this.volume,
    );
  }
}
