import 'package:flutter/material.dart';
import 'package:usound/assets/fonts.dart';
import 'package:usound/widgets/list_songs/song.dart';

class ThemedPlaylist extends StatelessWidget {
  const ThemedPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Theme\'s title', style: textNormalStyle),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'See all',
                  style: textSmallLightStyle,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          const SongItem(),
          const SizedBox(height: 10),
          const SongItem(),
          const SizedBox(height: 10),
          const SongItem()
        ],
      ),
    );
  }
}
