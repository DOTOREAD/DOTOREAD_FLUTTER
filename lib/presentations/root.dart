import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:dotoread_app/presentations/screens/bookmark_screen.dart';
import 'package:dotoread_app/presentations/screens/share_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    const ShareScreen(),
    const DotoriScreen(),
    const SettingScreen(),
  ];

  final List<String> iconList = [
    'assets/icons/Home.svg',
    'assets/icons/BookMark.svg',
    'assets/icons/Share.svg',
    'assets/icons/Mission.svg',
    'assets/icons/MyPage.svg',
  ];

  final List<String> iconClickedList = [
    'assets/icons/HomeClicked.svg',
    'assets/icons/BookMarkClicked.svg',
    'assets/icons/ShareClicked.svg',
    'assets/icons/MissionClicked.svg',
    'assets/icons/MyPageClicked.svg',
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
      bottomNavigationBar: Obx(
        () => Container(
          margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: AppTheme.gray1,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: AppTheme.articleBox,
                blurRadius: 30,
                offset: Offset(0, 5),
              ),
            ],
            border: Border.all(color: AppTheme.gray1, width: 1),
          ),
          child: AnimatedBottomNavigationBar.builder(
            itemCount: iconList.length,
            tabBuilder: (int index, bool isActive) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: isActive
                    ? SvgPicture.asset(
                        iconClickedList[index],
                        width: 24,
                        height: 24,
                      )
                    : SvgPicture.asset(
                        iconList[index],
                        width: 24,
                        height: 24,
                      ),
              );
            },
            activeIndex: _controller.bottomNavIndex.value,
            onTap: (index) => _controller.updateIndex(index),
            backgroundColor: Colors.transparent,
            gapLocation: GapLocation.none,
          ),
        ),
      ),
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
