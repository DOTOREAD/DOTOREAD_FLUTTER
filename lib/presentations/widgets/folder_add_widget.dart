import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/domain/repositories/folder_repository.dart';
import 'package:dotoread_app/controllers/folder_add_widget_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FolderAddWidget extends StatelessWidget {
  final FolderAddWidgetController _controller =
      Get.find<FolderAddWidgetController>();
  FolderAddWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          child: _controller.isAdding.value
              ? Row(
                  key: const ValueKey(1), // TextField 상태
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: AppTheme.gray3)),
                          hintText: 'Enter folder name',
                        ),
                        autofocus: true, // TextField 활성화 시 키보드 자동 열림
                        onChanged:
                            _controller.onFolderNameChanged, // 입력된 텍스트 반영
                      ),
                    ),
                    IconButton(
                      icon: _controller.isTextFieldNotEmpty.value
                          ? const Icon(
                              Icons.add,
                              color: AppTheme
                                  .orange1, // TextField에 내용 있으면 체크 버튼 활성화
                            )
                          : const Icon(
                              Icons.close, // TextField가 비어있으면 뒤로가기 버튼
                              color: AppTheme.gray3,
                            ),
                      onPressed: _controller.isTextFieldNotEmpty.value
                          ? _controller.addFolder // 내용이 있으면 폴더 추가
                          : _controller.toggleAddMode, // 비어있으면 추가 모드 취소
                    ),
                  ],
                )
              : Row(
                  key: const ValueKey(2), // 기본 상태
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Folders',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.add,
                        color: AppTheme.gray3,
                      ),
                      onPressed: _controller.toggleAddMode, // 추가 버튼 눌렀을 때 전환
                    ),
                  ],
                ),
        ),
      );
    });
  }
}
