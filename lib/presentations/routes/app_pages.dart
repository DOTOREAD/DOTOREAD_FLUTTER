import 'package:dotoread_app/domain/bindings/bookmark_binding.dart';
import 'package:dotoread_app/domain/bindings/folder_binding.dart';

import 'package:dotoread_app/domain/bindings/root_binding.dart';
import 'package:dotoread_app/domain/bindings/splash_binding.dart';
import 'package:dotoread_app/presentations/root.dart';
import 'package:dotoread_app/presentations/routes/app_routes.dart';
import 'package:dotoread_app/presentations/screens/folder_details_screen.dart';
import 'package:dotoread_app/presentations/screens/signin_screen.dart';
import 'package:dotoread_app/presentations/screens/signup_screen.dart';
import 'package:dotoread_app/presentations/screens/splash_screen.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.Splash,
        page: () => SplashScreen(),
        binding: SplashBinding()),
    GetPage(name: AppRoutes.Signin, page: () => const SigninScreen()),
    GetPage(name: AppRoutes.Signup, page: () => const SignupScreen()),
    GetPage(
      name: AppRoutes.Root,
      page: () => Root(),
      bindings: [
        RootBinding(),
        FolderBinding(),
        BookmarkBinding(),
      ],
    ),
    GetPage(
        name: AppRoutes.BookmarkInFolder,
        page: () => const FolderDetailsScreen(),
        bindings: [
          FolderBinding(),
          BookmarkBinding(),
        ])
  ];
}
