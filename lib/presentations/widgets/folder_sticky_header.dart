import 'package:flutter/material.dart';

class FolderStickyHeader extends SliverPersistentHeaderDelegate {
  final String folderName;
  final double readRatio;
  final double unreadRatio;

  FolderStickyHeader({
    required this.folderName,
    required this.readRatio,
    required this.unreadRatio,
  });

  @override
  double get minExtent => 64;

  @override
  double get maxExtent => 200;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    const progressBarHeight = 20.0;

    final showProgressBars = shrinkOffset == 0;
    return Container(
      height: maxExtent,
      decoration: BoxDecoration(
        color: Color.lerp(const Color(0xffc7ccdb), const Color(0xff2a324b),
            shrinkOffset / maxExtent),
        border: const Border(
          bottom: BorderSide(
            color: Color(0xff767b91),
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            folderName,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.lerp(const Color(0xff767b91),
                  const Color(0xffffffff), shrinkOffset / maxExtent),
            ),
          ),
          if (showProgressBars) ...[
            const SizedBox(height: 10),
            _buildProgressBar(
              context: context,
              label: 'Read',
              ratio: readRatio,
              color: Colors.green,
              height: progressBarHeight,
            ),
            const SizedBox(height: 5),
            _buildProgressBar(
              context: context,
              label: 'Unread',
              ratio: unreadRatio,
              color: Colors.red,
              height: progressBarHeight,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildProgressBar({
    required BuildContext context,
    required String label,
    required double ratio,
    required Color color,
    required double height,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        SizedBox(
          height: height,
          width: MediaQuery.of(context).size.width * 0.8,
          child: LinearProgressIndicator(
            value: ratio,
            color: color,
            backgroundColor: Colors.grey[300],
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(FolderStickyHeader oldDelegate) {
    return folderName != oldDelegate.folderName ||
        readRatio != oldDelegate.readRatio ||
        unreadRatio != oldDelegate.unreadRatio;
  }
}
