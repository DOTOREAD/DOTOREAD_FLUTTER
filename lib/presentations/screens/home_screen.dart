import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/fresh_article.dart';
import 'package:dotoread_app/presentations/widgets/home_dashboard.dart';
import 'package:dotoread_app/presentations/widgets/artice_carousel.dart';
import 'package:dotoread_app/presentations/widgets/url_add_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      suffixIcon: Icon(Icons.search, color: AppTheme.gray3),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      focusedBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppTheme.orange1, width: 2.0),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: AppTheme.orange1, width: 1.5),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                UrlAddButton(),
              ],
            ),
            HomeDashboard(),
            // FreshArticle(),
          ],
        ),
      ),
    ));
  }
}
