import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uts/features/page_provider.dart';
import 'package:uts/router/app_router.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PageProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
