part of 'radio_player_cubit.dart';

class RadioPlayerState {
  const RadioPlayerState({
    required this.isPlaying,
    required this.isAudioLoading,
    required this.volume,
    this.currentStationIndex,
    this.currentPlaylistType,
    this.currentPlaylist,
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

  final int? currentStationIndex;
  final PlaylistType? currentPlaylistType;
  final List<RadioStation>? currentPlaylist;

  RadioStation? get currentStation {
    if (currentStationIndex != null && currentPlaylist != null) {
      return currentPlaylist![currentStationIndex!];
    }

    return null;
  }

  RadioPlayerState copyWith({
    bool? isPlaying,
    bool? isAudioLoading,
    double? volume,
    int? currentStationIndex,
    PlaylistType? currentPlaylistType,
    List<RadioStation>? currentPlaylist,
  }) {
    return RadioPlayerState(
      isPlaying: isPlaying ?? this.isPlaying,
      isAudioLoading: isAudioLoading ?? this.isAudioLoading,
      volume: volume ?? this.volume,
      currentStationIndex: currentStationIndex ?? this.currentStationIndex,
      currentPlaylistType: currentPlaylistType ?? this.currentPlaylistType,
      currentPlaylist: currentPlaylist ?? this.currentPlaylist,
    );
  }
}
