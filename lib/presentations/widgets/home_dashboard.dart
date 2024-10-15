import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/gradient_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeDashboard extends StatelessWidget {
  const HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('TODAY IS\nGOOD TIME\nTO DOTOREAD',
                  style: AppTheme.titleTextStyle),
              GradientProgressIndicator(percent: 0.75),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    height: 30,
                    width: 30,
                    "assets/icons/Acorn.svg",
                    color: AppTheme.gray1,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Remaining Dotori",
                    style: TextStyle(
                      color: AppTheme.gray2,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                ],
              ),
              Container(
                width: 1,
                height: 80,
                color: AppTheme.gray2,
              ),
              Column(
                children: [
                  SvgPicture.asset(
                    height: 30,
                    width: 30,
                    "assets/icons/Acorn.svg",
                    color: AppTheme.gray1,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Donated Dotori",
                    style: TextStyle(
                      color: AppTheme.gray2,
                      fontSize: 18,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
