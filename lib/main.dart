import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:project_110/routes/routes.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      // theme: ThemeData.dark(),
      title: "110 Group",
      // home: HomePage(),
      debugShowCheckedModeBanner: true,
    );
  }
}
