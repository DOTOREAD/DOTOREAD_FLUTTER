import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/artice_carousel.dart';
import 'package:flutter/material.dart';

class FreshArticle extends StatelessWidget {
  const FreshArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'FRESH ARTICLE',
            style: AppTheme.titleTextStyle,
          ),
          const SizedBox(
            height: 10,
          ),
          ArticleCarousel()
        ],
      ),
    );
  }
}
