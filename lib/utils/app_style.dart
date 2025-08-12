import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static const Color _defaultTextColor = Colors.black;

  // Regular
  static TextStyle regular12({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(12, FontWeight.w400, height, letterSpacing, color);
  static TextStyle regular14({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(14, FontWeight.w400, height, letterSpacing, color);
  static TextStyle regular16({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(16, FontWeight.w400, height, letterSpacing, color);
  static TextStyle regular18({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(18, FontWeight.w400, height, letterSpacing, color);
  static TextStyle regular20({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(20, FontWeight.w400, height, letterSpacing, color);
  static TextStyle regular22({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(22, FontWeight.w400, height, letterSpacing, color);
  static TextStyle regular24({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(24, FontWeight.w400, height, letterSpacing, color);
  static TextStyle regular28({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(28, FontWeight.w400, height, letterSpacing, color);
  static TextStyle regular32({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(32, FontWeight.w400, height, letterSpacing, color);

  // Medium
  static TextStyle medium12({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(12, FontWeight.w500, height, letterSpacing, color);
  static TextStyle medium14({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(14, FontWeight.w500, height, letterSpacing, color);
  static TextStyle medium16({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(16, FontWeight.w500, height, letterSpacing, color);
  static TextStyle medium18({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(18, FontWeight.w500, height, letterSpacing, color);
  static TextStyle medium20({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(20, FontWeight.w500, height, letterSpacing, color);
  static TextStyle medium22({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(22, FontWeight.w500, height, letterSpacing, color);
  static TextStyle medium24({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(24, FontWeight.w500, height, letterSpacing, color);
  static TextStyle medium28({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(28, FontWeight.w500, height, letterSpacing, color);
  static TextStyle medium32({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(32, FontWeight.w500, height, letterSpacing, color);

  // SemiBold
  static TextStyle semiBold12({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(12, FontWeight.w600, height, letterSpacing, color);
  static TextStyle semiBold14({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(14, FontWeight.w600, height, letterSpacing, color);
  static TextStyle semiBold16({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(16, FontWeight.w600, height, letterSpacing, color);
  static TextStyle semiBold18({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(18, FontWeight.w600, height, letterSpacing, color);
  static TextStyle semiBold20({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(20, FontWeight.w600, height, letterSpacing, color);
  static TextStyle semiBold22({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(22, FontWeight.w600, height, letterSpacing, color);
  static TextStyle semiBold24({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(24, FontWeight.w600, height, letterSpacing, color);
  static TextStyle semiBold28({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(28, FontWeight.w600, height, letterSpacing, color);
  static TextStyle semiBold32({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(32, FontWeight.w600, height, letterSpacing, color);

  // Bold
  static TextStyle bold12({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(12, FontWeight.w700, height, letterSpacing, color);
  static TextStyle bold14({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(14, FontWeight.w700, height, letterSpacing, color);
  static TextStyle bold16({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(16, FontWeight.w700, height, letterSpacing, color);
  static TextStyle bold18({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(18, FontWeight.w700, height, letterSpacing, color);
  static TextStyle bold20({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(20, FontWeight.w700, height, letterSpacing, color);
  static TextStyle bold22({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(22, FontWeight.w700, height, letterSpacing, color);
  static TextStyle bold24({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(24, FontWeight.w700, height, letterSpacing, color);
  static TextStyle bold28({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(28, FontWeight.w700, height, letterSpacing, color);
  static TextStyle bold32({Color? color, double? height, double? letterSpacing}) =>
      _textStyle(32, FontWeight.w700, height, letterSpacing, color);

  static TextStyle _textStyle(
      double size,
      FontWeight weight,
      double? height,
      double? letterSpacing,
      [Color? color]
      ) {
    return GoogleFonts.roboto(
      fontSize: size,
      fontWeight: weight,
      height: height,
      letterSpacing: letterSpacing,
      color: color ?? _defaultTextColor,
    );
  }
}
