import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final Alignment alignment;
  final TextAlign textAlign;
  const PrimaryText(
      {Key key,
      this.text = "",
      this.fontSize = 18,
      this.textColor = Colors.black,
      this.fontWeight = FontWeight.normal,
      this.alignment = Alignment.center,
      this.textAlign = TextAlign.center})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(text,
          textAlign: textAlign,
          style: TextStyle(
              height: 1.5,
              fontSize:
                  ScreenUtil().setSp(fontSize, allowFontScalingSelf: true),
              color: textColor,
              fontWeight: fontWeight,
              fontFamily: "SuisseIntl")),
    );
  }
}
