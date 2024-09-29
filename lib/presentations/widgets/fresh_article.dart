import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/artice_carousel.dart';
import 'package:flutter/material.dart';

class FreshArticle extends StatelessWidget {
  const FreshArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Text(
            'FRESH ARTICLE',
            style: TextStyle(
              color: AppTheme.orange1,
              fontSize: 30,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ArticleCarousel()
          // Container(
          //   height: 180,
          //   decoration: ShapeDecoration(
          //     shape: RoundedRectangleBorder(
          //       side: const BorderSide(
          //         width: 2,
          //         color: AppTheme.orange1,
          //       ),
          //       borderRadius: BorderRadius.circular(13.59),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
