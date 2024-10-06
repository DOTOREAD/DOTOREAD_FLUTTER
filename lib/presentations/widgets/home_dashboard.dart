import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/gradient_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('TODAY IS\nGOOD TIME\nTO DOTOREAD',
                  style: AppTheme.titleTextStyle),
              GradientProgressIndicator(percent: 0.75),
            ],
          ),
        ],
      ),
    );
  }
}
