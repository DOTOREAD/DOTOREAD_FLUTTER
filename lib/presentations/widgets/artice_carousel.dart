import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotoread_app/core/constants/theme.dart';
import 'package:dotoread_app/data/models/bookmark_model/bookmark_model.dart';
import 'package:dotoread_app/presentations/screens/webview_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ArticleCarousel extends StatelessWidget {
  final List<BookmarkModel> bookmarkList = [
    const BookmarkModel(
      url: "https://toki0411.tistory.com/20",
      img:
          'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FuVtv8%2FbtrLLyXCi8g%2FJRfi8t1vB4yhsYMGHHmCe0%2Fimg.png',
      title: "[에러 해결] Android Studio",
    ),
    const BookmarkModel(
      url: "https://velog.io/@roo333",
      img:
          'https://velog.velcdn.com/images/roo333/post/e06e5c7c-ee64-4186-820c-256f7dfa08d0/image.jpg',
      title: "메모리 관리 in Python",
    ),
    const BookmarkModel(
      url: "https://m.post.naver.com/",
      img:
          'https://postfiles.pstatic.net/MjAyMjExMTBfMTEw/MDAxNjY4MDUwMTY4MjA1.BaWUeEb6QVCrUYidTgbTJgjIQ1eVA_XwMxy7AC9n4rYg.uD6Q4LyZ7MTMRr38nWou-LF00cIVpq4ewHu_4OT1pv8g.JPEG.arthetique/%EB%B8%94%EB%A1%9C%EA%B7%B8%EC%8D%B8%EB%84%A4%EC%9D%BC2.jpg?type=w966',
      title: "피부타입과 피부 자가 진단법",
    ),
  ];

  ArticleCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        viewportFraction: 1.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: bookmarkList.map((bookmark) {
        return Builder(
          builder: (BuildContext context) {
            return GestureDetector(
              onTap: () {
                Get.to(() =>
                    WebviewScreen(title: bookmark.title!, url: bookmark.url!));
              },
              child: Stack(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        bookmark.img!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 90,
                        width: double.infinity,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.5),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              bookmark.title!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              bookmark.url!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
