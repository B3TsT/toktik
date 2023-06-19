import 'package:flutter/material.dart';
import 'package:toktik/src/domain/repositories/video_posts_repositories.dart';
import 'package:toktik/src/infrastructure/models/local_video_model.dart';

import '../../domain/entities/video_post.dart';
import '../../shared/data/local_video_posrt.dart';

class DiscoverProvider extends ChangeNotifier {
  DiscoverProvider({required this.videosRepository});
  final VideoPostRepository videosRepository;
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(seconds: 3));
    final List<VideoPost> newVideos =
        await videosRepository.getTrendingVideosByPage(1);
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
