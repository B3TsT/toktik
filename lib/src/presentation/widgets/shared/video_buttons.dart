import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../config/helpers/human_formats.dart';
import '../../../domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  const VideoButtons({super.key, required this.video});
  final VideoPost video;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButton(
          value: video.likes,
          iconColor: Colors.red,
          iconDate: Icons.favorite,
        ),
        const SizedBox(height: 20),
        _CustomIconButton(
          value: video.views,
          iconDate: Icons.remove_red_eye_outlined,
        ),
        const SizedBox(height: 20),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds: 5),
          child: const _CustomIconButton(
            value: 0,
            iconDate: Icons.play_circle_outline,
          ),
        )
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
  const _CustomIconButton(
      {required this.value, required this.iconDate, iconColor})
      : color = iconColor ?? Colors.white;
  final int value;
  final IconData iconDate;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(iconDate, color: color, size: 30),
        ),
        if (value > 0) Text(HumanFormts.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}
