import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dotoread_app/presentations/screens/bookmark_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/root_controller.dart';
import '../core/constants/theme.dart';

import 'screens/home_screen.dart';
import 'screens/dotori_screen.dart';
import 'screens/setting_screen.dart';

class Root extends StatelessWidget {
  final RootController _controller = Get.find<RootController>();
  final TextEditingController _urlController = TextEditingController();

  final List<Widget> pages = [
    const HomeScreen(),
    const BookmarkScreen(),
    const DotoriScreen(),
    const SettingScreen(),
  ];

  final List<IconData> iconList = [
    Icons.home_rounded,
    Icons.bookmark,
    Icons.local_fire_department,
    Icons.person,
  ];

  Root({super.key});

  @override
  Widget build(BuildContext context) {
    bool keyboardIsOpened = MediaQuery.of(context).viewInsets.bottom != 0.0;
    return Scaffold(
      body: Obx(() => pages[_controller.bottomNavIndex.value]),
      floatingActionButton: keyboardIsOpened
          ? null
          : FloatingActionButton(
              shape: ShapeBorder.lerp(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  const CircleBorder(),
                  0.5),
              backgroundColor: AppTheme.orange1,
              onPressed: () {
                _showUrlModal();
              },
              child: const Icon(Icons.add),
            ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() => AnimatedBottomNavigationBar(
            icons: iconList,
            activeIndex: _controller.bottomNavIndex.value,
            onTap: (index) => _controller.updateIndex(index),
            backgroundColor: AppTheme.gray1,
            inactiveColor: AppTheme.white1,
            activeColor: AppTheme.orange1,
            gapLocation: GapLocation.center,
          )),
    );
  }

  void _showUrlModal() {
    Get.bottomSheet(
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Enter URL', style: AppTheme.modalTitleStyle),
              const SizedBox(height: 20),
              TextField(
                controller: _urlController,
                decoration: AppTheme.urlInputDecoration,
                keyboardType: TextInputType.url,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: AppTheme.textButtonPrimaryTheme,
                onPressed: () {
                  final enteredUrl = _urlController.text;
                  if (enteredUrl.isNotEmpty) {
                    Get.back();
                    _urlController.clear();
                  }
                },
                child: const Text(
                  'Save URL',
                  style: AppTheme.buttonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      backgroundColor: AppTheme.backgroundBox,
    );
  }
}
