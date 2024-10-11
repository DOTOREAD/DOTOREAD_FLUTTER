import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/folder_add_widget.dart';
import 'package:dotoread_app/presentations/widgets/folder_list.dart';
import 'package:dotoread_app/presentations/widgets/url_add_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
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
                  SizedBox(width: 10),
                  UrlAddButton(),
                ],
              ),
              const SizedBox(height: 10),
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
}
