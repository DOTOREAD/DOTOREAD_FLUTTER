import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/folder_add_widget.dart';
import 'package:dotoread_app/presentations/widgets/folder_list.dart';
import 'package:dotoread_app/presentations/widgets/url_add_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BookmarkScreen extends StatelessWidget {
  BookmarkScreen({super.key});
  final TextEditingController _urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search, color: AppTheme.gray3),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppTheme.orange1, width: 2.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: AppTheme.orange1, width: 1.5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppTheme.orange1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        _showUrlModal();
                      },
                      icon: const Icon(Icons.note_add_outlined),
                      color: AppTheme.white1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              // const Padding(
              //   padding: EdgeInsets.only(left: 8.0),
              //   child: Text('Bookmarks', style: AppTheme.modalTitleStyle),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              ListTile(
                onTap: () {},
                title: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Cloud.svg',
                      width: 18,
                      height: 18,
                      color: AppTheme.white2,
                    ),
                    const Text(
                      '  모든 북마크',
                      style: AppTheme.folderTextStyle,
                    ),
                  ],
                ),
                tileColor: AppTheme.backgroundBox,
                selectedTileColor: AppTheme.orange3,
                iconColor: AppTheme.orange3,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: () {},
                title: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/Letter.svg',
                      width: 22,
                      height: 22,
                      color: AppTheme.white2,
                    ),
                    const Text(
                      '   미분류',
                      style: AppTheme.folderTextStyle,
                    ),
                  ],
                ),
                tileColor: AppTheme.backgroundBox,
                selectedTileColor: AppTheme.orange3,
                iconColor: AppTheme.orange3,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
              const SizedBox(height: 10),
              FolderAddWidget(),
              FolderList(),
            ],
          ),
        ),
      ),
    );
  }

  void _showUrlModal() {
    Get.bottomSheet(
      UrlAddWidget(urlController: _urlController),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: AppTheme.backgroundBox,
    );
  }
}
