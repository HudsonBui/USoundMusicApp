import 'package:flutter/material.dart';
import 'package:usound/assets/colors.dart';
import 'package:usound/assets/fonts.dart';
import 'package:usound/assets/image_url.dart';

class SongNoBackground extends StatelessWidget {
  const SongNoBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(
              height: 100,
              width: 100,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  introScreen1Image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Song\'s name',
                    style: textNormalStyle,
                  ),
                  const Text(
                    'Artist',
                    style: textSmallLightStyle,
                  ),
                  const Text(
                    'Duration 1:34',
                    style: textSmallLightStyle,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
                size: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
