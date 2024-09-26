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
    fontWeight: FontWeight.bold,
    color: white1,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontFamily: "Pretendard",
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: white1,
  );
  static const TextStyle modalTitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static final InputDecoration urlInputDecoration = InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    labelText: 'URL',
    hintText: 'Enter a URL to save',
    prefixIcon: const Icon(Icons.link),
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
    ), // Title text style
    contentTextStyle: const TextStyle(
      fontSize: 16,
      color: white2,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
}
