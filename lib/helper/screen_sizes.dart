import 'package:flutter/cupertino.dart';

class ScreenSizes{
  static bool isDesktop(BuildContext context) => MediaQuery.sizeOf(context).width >= 1100;
  static bool isTablet(BuildContext context) => MediaQuery.sizeOf(context).width < 1100 && MediaQuery.sizeOf(context).width >= 760;
  static bool isMobile(BuildContext context) => MediaQuery.sizeOf(context).width < 760;

}