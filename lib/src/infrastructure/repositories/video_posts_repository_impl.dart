import 'package:toktik/src/domain/datasources/video_posts_datasource.dart';
import 'package:toktik/src/domain/entities/video_post.dart';

import '../../domain/repositories/video_posts_repositories.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {
  VideoPostsRepositoryImpl({required this.videosDatasource});
  final VideoPostDatasource videosDatasource;

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userId) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}
