import 'package:dotoread_app/controllers/bookmarks_controller.dart';
import 'package:dotoread_app/data/models/folder_model.dart';
import 'package:dotoread_app/presentations/widgets/folder_content_list.dart';
import 'package:dotoread_app/presentations/widgets/folder_sticky_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FolderDetailsScreen extends StatelessWidget {
  const FolderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final folder = Get.arguments as FolderModel;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(folder.name!),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.abc_outlined),
          ),
        ],
      ),
      body: FolderContentList(),
    ));
  }
}
