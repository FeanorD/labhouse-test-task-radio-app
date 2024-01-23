import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    required this.isPlaying,
    required this.isAudioLoading,
    this.iconSize = 40,
    this.onTap,
    super.key,
  });

  final bool isPlaying;
  final bool isAudioLoading;
  final VoidCallback? onTap;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            isPlaying
                ? Icons.pause_rounded
                : Icons.play_arrow_rounded,
            size: iconSize,
          ),
          onPressed: onTap,
        ),

        if (isAudioLoading)
          Positioned.fill(
            // Restrict tap events on widgets visually under this widget
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(iconSize * 0.4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(8.0),

                ),
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
