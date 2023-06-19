import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme/app_theme.dart';
import 'presentation/providers/discover_provider.dart';
import 'presentation/screens/discover/discover_screen.dart';
import 'shared/data/impl.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            lazy: false,
            create: (_) => DiscoverProvider(videosRepository: videoPostReposity)
              ..loadNextPage()),
      ],
      child: MaterialApp(
        title: 'TokTik',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const Scaffold(body: DiscoverScreen()),
      ),
    );
  }
}
