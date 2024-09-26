import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/root.dart';
import 'package:dotoread_app/presentations/routes/app_pages.dart';
import 'package:dotoread_app/presentations/routes/app_routes.dart';
import 'package:dotoread_app/core/utils/dependency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
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
