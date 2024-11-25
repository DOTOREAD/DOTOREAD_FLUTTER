import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/collection_add_button.dart';
import 'package:dotoread_app/presentations/widgets/url_add_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotoread_app/presentations/widgets/collection_widget.dart';

class ShareScreen extends StatelessWidget {
  const ShareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // 상단 검색바와 URL 추가 버튼
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // 검색창
                  Expanded(
                    child: TextField(
                      decoration: AppTheme.searchInputDecoration.copyWith(
                        focusedBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppTheme.gray2, width: 2.0),
                        ),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppTheme.gray2, width: 1.5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  // URL 추가 버튼
                  const CollectionAddButton(),
                ],
              ),
            ),

            // 컬렉션 리스트
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {},
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: 10,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (context, index) {
                    return const CollectionWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
