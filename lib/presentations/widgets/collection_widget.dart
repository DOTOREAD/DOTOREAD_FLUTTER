import 'package:dotoread_app/core/constants/theme.dart';
import 'package:flutter/material.dart';

class CollectionWidget extends StatelessWidget {
  const CollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.gray3,
                ),
                child: const Icon(
                  Icons.person,
                  size: 16,
                  color: AppTheme.white1,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                '닉네임임',
                style: AppTheme.titleTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Text(
                '11월 21일',
                style: AppTheme.contentTextStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            decoration: BoxDecoration(
              color: AppTheme.backgroundBox,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '강아지',
                  style: AppTheme.titleTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  '강아지강아지',
                  style: AppTheme.contentTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 16),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 8),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: AppTheme.bookmarkHover,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        title: Text(
                          '강아지 종류, 사진 모음 - 실내 애완견 TOP10',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.titleTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Text(
                          '실제url',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.contentTextStyle.copyWith(
                            color: AppTheme.white2,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                if (2 > 3)
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 4),
                    child: Text(
                      '외 ${2 - 3}개 북마크 더보기',
                      style: AppTheme.contentTextStyle.copyWith(
                        color: AppTheme.gray3,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
