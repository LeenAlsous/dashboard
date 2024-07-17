import 'package:dashboard/helper/screen_sizes.dart';
import 'package:dashboard/presentation/view/week_dashboard/week_mobile.dart';
import 'package:dashboard/presentation/view/week_dashboard/week_web.dart';
import 'package:flutter/material.dart';

class WeekDashboard extends StatefulWidget {
  const WeekDashboard({Key? key}) : super(key: key);

  @override
  State<WeekDashboard> createState() => _WeekDashboardState();
}

class _WeekDashboardState extends State<WeekDashboard> {
  @override
  Widget build(BuildContext context) {
    bool isMobile = ScreenSizes.isMobile(context);
    return !isMobile ? const WebWeekDashboard() : const MobileWeekDashboard();
  }
}
