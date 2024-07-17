import 'package:dashboard/dummy/dummy_data.dart';
import 'package:dashboard/presentation/view/week_dashboard/week_mobile.dart';
import 'package:dashboard/presentation/widgets/drawer_view.dart';
import 'package:dashboard/presentation/widgets/split_view.dart';
import 'package:flutter/material.dart';

class MiddlePoint extends StatefulWidget {
  const MiddlePoint({Key? key}) : super(key: key);

  @override
  State<MiddlePoint> createState() => _MiddlePointState();
}

class _MiddlePointState extends State<MiddlePoint> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1050) {
          return const Scaffold(body: SplitView());
        }
        return Scaffold(
          body:  menu.firstWhere((element) => element.isSelected).view,
            );
      },
    );
  }
}
// MediaQuery.sizeOf(context).width * 0.01
