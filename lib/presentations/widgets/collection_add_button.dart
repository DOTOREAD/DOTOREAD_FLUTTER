import 'package:dotoread_app/controllers/url_add_controller.dart';
import 'package:dotoread_app/presentations/widgets/folder_list_modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dotoread_app/core/constants/theme.dart';

class CollectionAddButton extends StatelessWidget {
  const CollectionAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: AppTheme.orange1,
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          _showCollectionModal(context);
        },
        icon: const Icon(Icons.edit),
        color: AppTheme.white1,
      ),
    );
  }

  void _showCollectionModal(BuildContext context) {
    final RenderBox buttonBox = context.findRenderObject() as RenderBox;
    final Offset buttonPosition = buttonBox.localToGlobal(Offset.zero);
    final double buttonTop = buttonPosition.dy;
    const double buttonSize = 42;
    final double adjustedTopPosition = buttonTop;

    showDialog(
      context: context,
      barrierDismissible: true,
      barrierColor: AppTheme.backgroundBox.withOpacity(0.5),
      builder: (BuildContext context) {
        return Stack(
          children: [
            Positioned(
              top: adjustedTopPosition - buttonSize,
              left: 16,
              right: 16,
              child: Material(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: AppTheme.background,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 10),
                      const Text(
                        '새 글 작성',
                        style: AppTheme.modalTitleStyle,
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: AppTheme.urlInputDecoration.copyWith(
                          hintText: '제목을 입력하세요',
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        maxLines: 3,
                        decoration: AppTheme.urlInputDecoration.copyWith(
                          hintText: '메모를 입력하세요',
                        ),
                      ),
                      const SizedBox(height: 16),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_circle_outline),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        constraints: const BoxConstraints(maxHeight: 150),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 0,
                          itemBuilder: (context, index) {
                            return ListTile(
                              dense: true,
                              title: const Text('선택된 북마크 제목'),
                              trailing: IconButton(
                                icon: const Icon(Icons.close),
                                onPressed: () {},
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: AppTheme.textButtonPrimaryTheme,
                          onPressed: () {
                            Get.back();
                          },
                          child:
                              const Text('저장', style: AppTheme.buttonTextStyle),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
