import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/data/models/mission_model/mission_model.dart';
import 'package:flutter/material.dart';

class MissionList extends StatelessWidget {
  final List<MissionModel> missions = [
    const MissionModel(
      id: 1,
      content: '일주일 지난 사이트 5회 방문하기',
      goal: 5,
      reward: 5,
    ),
    const MissionModel(
      id: 2,
      content: '북마킹 5개 이상하기',
      goal: 5,
      reward: 5,
    ),
    const MissionModel(
      id: 3,
      content: '링크공유 5회 이상하기',
      goal: 5,
      reward: 5,
    ),
    const MissionModel(
      id: 4,
      content: '다른 사람의 게시물 5회 보기',
      goal: 5,
      reward: 5,
    ),
  ];

  MissionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: missions.map((mission) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Container(
            padding: const EdgeInsets.all(16.0),
            decoration: ShapeDecoration(
              color: AppTheme.backgroundBox,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: AppTheme.orange1),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    mission.content!,
                    style: AppTheme.modalTitleStyle,
                  ),
                ),
                Text(
                  '0 / ${mission.goal}', // usermission.current / mission.goal
                  style: AppTheme.buttonTextStyle,
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
