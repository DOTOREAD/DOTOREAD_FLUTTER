import 'package:dotoread_app/presentations/widgets/fresh_article.dart';
import 'package:dotoread_app/presentations/widgets/home_dashboard.dart';
import 'package:dotoread_app/presentations/widgets/artice_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
      child: Column(children: [
        HomeDashboard(),
        FreshArticle(),
      ]),
    ));
  }
}
