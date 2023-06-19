import '../../infrastructure/datasources/local_video_datasource_impl.dart';
import '../../infrastructure/repositories/video_posts_repository_impl.dart';

final videoPostReposity =
    VideoPostsRepositoryImpl(videosDatasource: LocalVideoDatasourceImpl());
