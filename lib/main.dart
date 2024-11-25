import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/routes/app_pages.dart';
import 'package:dotoread_app/presentations/routes/app_routes.dart';
import 'package:dotoread_app/core/utils/dependency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  // await Supabase.initialize(
  //     url: 'https://wzlonexwankroajfeyuw.supabase.co',
  //     anonKey:
  //         'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Ind6bG9uZXh3YW5rcm9hamZleXV3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzExNTI3OTcsImV4cCI6MjA0NjcyODc5N30.qoWk7b6G_1bLu2bOxN0UXcTA889X3lubi0tsBfNO14c');
  WidgetsFlutterBinding.ensureInitialized();
  Dependency.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Pretendard",
        bottomSheetTheme: const BottomSheetThemeData(),
        dialogTheme: AppTheme.alertDialogTheme,
      ),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      initialRoute: AppRoutes.Splash,
      getPages: AppPages.pages,
    );
  }
}
