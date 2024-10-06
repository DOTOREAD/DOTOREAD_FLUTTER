import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/store_list.dart';
import 'package:flutter/material.dart';

import '../widgets/dotori_count_section.dart';

class DotoriScreen extends StatelessWidget {
  const DotoriScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '도토리 후원',
              style: AppTheme.titleTextStyle,
            ),
            const SizedBox(height: 16),
            const DotoriCountSection(),
            const SizedBox(height: 8),
            StoreList(),
            const SizedBox(height: 8),
            const Text(
              '도토리 미션',
              style: AppTheme.titleTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
