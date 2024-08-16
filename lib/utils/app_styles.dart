import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

/// A class that defines a set of reusable text styles for the application.
abstract class AppStyles {
  /// A regular text style with font size 16.
  static TextStyle styleRegular16 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  /// A bold text style with font size 16.
  static TextStyle styleBold16 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );

  /// A medium text style with font size 16.
  static TextStyle styleMedium16 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  /// A semi-bold text style with font size 16.
  static TextStyle styleSemiBold16 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 16),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// A semi-bold text style with font size 20.
  static TextStyle styleSemiBold20 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// A semi-bold text style with font size 12.
  static TextStyle styleSemiBold12 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// A regular text style with font size 12.
  static TextStyle styleRegular12 = TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 12),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  /// A semi-bold text style with font size 24.
  static TextStyle styleSemiBold24 = TextStyle(
    color: const Color(0xFF064061),
    fontSize: getResponsiveFontSize(fontSize: 24),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// A regular text style with font size 14.
  static TextStyle styleRegular14 = TextStyle(
    color: const Color(0xFFAAAAAA),
    fontSize: getResponsiveFontSize(fontSize: 14),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  /// A semi-bold text style with font size 18.
  static TextStyle styleSemiBold18 = TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 18),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  /// A medium text style with font size 20.
  static TextStyle styleMedium20 = TextStyle(
    color: const Color(0xFFFFFFFF),
    fontSize: getResponsiveFontSize(fontSize: 20),
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
}

/// Returns a responsive font size based on the device's screen size.
double getResponsiveFontSize({required double fontSize}) {
  /// Calculate the scale factor based on the device's screen size.
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

/// Returns a scale factor based on the device's screen size.
double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
