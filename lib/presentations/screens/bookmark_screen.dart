import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/presentations/widgets/folder_add_widget.dart';
import 'package:dotoread_app/presentations/widgets/folder_list.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PreferredSize(
                preferredSize: const Size.fromHeight(50.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: () {},
                title: const Text('All Bookmarks'),
                tileColor: AppTheme.backgroundBox,
                selectedTileColor: AppTheme.orange3,
                iconColor: AppTheme.orange3,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
              const SizedBox(height: 10),
              ListTile(
                onTap: () {},
                title: const Text('Unsorted'),
                tileColor: AppTheme.backgroundBox,
                selectedTileColor: AppTheme.orange3,
                iconColor: AppTheme.orange3,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              ),
              const SizedBox(height: 10),
              FolderAddWidget(),
              const SizedBox(height: 10),
              Expanded(
                child: FolderList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
