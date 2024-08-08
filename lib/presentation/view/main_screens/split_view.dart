import 'package:dashboard/business_logic/controller/screen_controller.dart';
import 'package:dashboard/helper/screen_sizes.dart';
import 'package:dashboard/presentation/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class SplitView extends StatefulWidget {
  const SplitView({Key? key}) : super(key: key);

  @override
  State<SplitView> createState() => _SplitViewState();
}

class _SplitViewState extends State<SplitView> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop = ScreenSizes.isDesktop(context);
    return Scaffold(
      body: Row(
        children: [
          if (isDesktop)
            const Expanded(
                child: DrawerWidget()),
          GetBuilder<ScreenController>(
            assignId: true,
            init: ScreenController(),
            builder: (controller) {
              return Expanded(
                  flex: 4,
                  child: controller.changeScreen());
            }
          ),
        ],
      ),
    );
  }
}
