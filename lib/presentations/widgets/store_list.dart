import 'package:dotoread_app/presentations/screens/donation_screen.dart';
import 'package:flutter/material.dart';
import 'package:dotoread_app/data/models/store_model/store_model.dart';
import 'package:dotoread_app/core/constants/theme.dart';

class StoreList extends StatelessWidget {
  StoreList({super.key});

  final List<StoreModel> storeList = [
    const StoreModel(
      id: 1,
      imageUrl: 'https://via.placeholder.com/200',
      name: 'World Wide Fund for Nature',
      content:
          'WWF는 세계적인 비영리 환경보전기관으로, 세계 100여 개국에서 글로벌 네트워크를 구축해 500만 명이상의 후원자들과 함께 활발히 활동하고 있습니다.',
    ),
    const StoreModel(
      id: 2,
      imageUrl: 'https://via.placeholder.com/200',
      name: '동물권 행동 카라',
      content:
          '당신의 후원으로 동물을 구합니다. 구조와 입양, 정책연구와 법제정, 생명권 교육과 캠페인으로 우리사회의 동물권을 확장합니다. 동물권행동 카라는 정기적인 외부 회계감사와 매월 재정보호로 후원금을 투명하게 운용합니다.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: storeList.map((store) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DonationScreen(
                              store: store,
                            ),
                          ),
                        );
                      },
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          double containerSize = constraints.maxWidth;
                          return Hero(
                            tag: store.id!,
                            child: Container(
                              height: containerSize,
                              width: containerSize,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(store.imageUrl!),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
