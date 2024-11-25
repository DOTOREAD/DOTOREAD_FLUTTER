import 'package:flutter/material.dart';

class AppTheme {
  static const Color orange1 = Color(0xFFF15A25);
  static const Color orange2 = Color.fromRGBO(209, 68, 7, 0.24);
  static const Color orange3 = Color(0xFFFFE5D9);

  static const Color white1 = Color(0xFFFFFFFF);
  static const Color white2 = Color(0xFFDEDEDE);

  static const Color gray1 = Color(0xFF3B3B3B);
  static const Color gray2 = Color(0xFF5C5C5C);
  static const Color gray3 = Color(0xFFA6ABBC);

  static const Color background = Color(0xFF000000);
  static const Color backgroundBox = Color(0xFF212121);

  static const Color articleBox = Color.fromRGBO(217, 217, 217, 0.10);
  static const Color articleContent = Color.fromRGBO(119, 119, 119, 0.63);

  static const Color bookmarkHover = Color(0xFF343434);
  static const Color bookmarkClick = Color(0xFF6E4A39);
  static const Color bookmarkSelect = Color(0xFFFFE5D9);

  static const Color textButtonPrimaryThemeColor = Color(0xFFCC5724);
  static const Color textButtonSecondaryThemeBorderColor = Color(0xFF5B5B5B);

  static const TextStyle titleTextStyle = TextStyle(
    fontFamily: "Pretendard",
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: white1,
  );
  static const TextStyle contentTextStyle = TextStyle(
    fontFamily: "Pretendard",
    fontSize: 16,
    fontWeight: FontWeight.w300,
    color: white2,
  );
  static const TextStyle folderTextStyle = TextStyle(
    fontFamily: "Pretendard",
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: white2,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: "Pretendard",
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: white1,
  );
  static const TextStyle modalTitleStyle = TextStyle(
    fontFamily: "Pretendard",
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: white1,
  );

  static const InputDecoration urlInputDecoration = InputDecoration(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppTheme.gray1, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppTheme.gray1, width: 1.5),
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
    hintText: 'https://',
  );

  static const InputDecoration searchInputDecoration = InputDecoration(
    hintText: 'Search',
    suffixIcon: Icon(Icons.search, color: AppTheme.gray3),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppTheme.orange1, width: 2.0),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: AppTheme.orange1, width: 1.5),
    ),
  );

  static final ButtonStyle textButtonSecondaryTheme = TextButton.styleFrom(
    backgroundColor: gray1,
    shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 3,
          color: textButtonSecondaryThemeBorderColor,
        ),
        borderRadius: BorderRadius.circular(15)),
  );
  static final ButtonStyle textButtonPrimaryTheme = TextButton.styleFrom(
    backgroundColor: textButtonPrimaryThemeColor,
    shape: RoundedRectangleBorder(
        side: const BorderSide(
          width: 3,
          color: orange1,
        ),
        borderRadius: BorderRadius.circular(15)),
  );
  static final DialogTheme alertDialogTheme = DialogTheme(
    backgroundColor: backgroundBox,
    titleTextStyle: titleTextStyle.copyWith(
      fontSize: 20,
      color: white1,
    ),
    contentTextStyle: const TextStyle(
      fontSize: 16,
      color: white2,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
