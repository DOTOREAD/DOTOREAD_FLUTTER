import 'package:dotoread_app/core/constants/theme.dart';
import 'package:flutter/material.dart';

class DotoriCountSection extends StatelessWidget {
  const DotoriCountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "후원한 도토리",
                style: AppTheme.modalTitleStyle,
              ),
              SizedBox(height: 8),
              Text(
                "50", // controller.getAcornDonateCount
                style: AppTheme.buttonTextStyle,
              ),
            ],
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "남아있는 도토리",
                style: AppTheme.modalTitleStyle,
              ),
              SizedBox(height: 8),
              Text(
                "100", // controller.user.getAcornCount();
                style: AppTheme.buttonTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
