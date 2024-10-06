import 'package:dotoread_app/core/constants/theme.dart';
import 'package:flutter/material.dart';
import 'package:dotoread_app/data/models/store_model/store_model.dart';

class StoreList extends StatelessWidget {
  StoreList({super.key});

  final List<StoreModel> storeList = [
    const StoreModel(
      id: 1,
      imageUrl: 'https://via.placeholder.com/200',
      name: 'World Wide Fund for Nature',
      content: 'Description of Article 1',
    ),
    const StoreModel(
      id: 2,
      imageUrl: 'https://via.placeholder.com/200',
      name: '동물권 행동 카라',
      content: 'Description of Article 2',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: storeList.map((article) {
            return Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 240,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(article.imageUrl!),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: AppTheme.textButtonPrimaryTheme,
                      child: const Text(
                        '후원하기',
                        style: AppTheme.buttonTextStyle,
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
