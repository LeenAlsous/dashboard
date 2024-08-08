import 'package:dashboard/business_logic/controller/screen_controller.dart';
import 'package:dashboard/dummy/dummy_data.dart';
import 'package:dashboard/helper/screen_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    bool isDesktop = ScreenSizes.isDesktop(context);
    return Drawer(
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            Image.asset(
              'assets/logo_transparent.png',
              height: MediaQuery
                  .sizeOf(context)
                  .height * 0.1,
            ),
            /*TextFormField(
              decoration: const InputDecoration(
                hintText: 'Search anything'
              ),
            ),*/
            SizedBox(height: MediaQuery
                .sizeOf(context)
                .height * 0.02),
            const Text('Menu'),
            Expanded(
              flex: 2,
              child: GetBuilder<ScreenController>(
                autoRemove: false,
                  init: ScreenController(),
                  builder: (controller) {
                    return ListView(
                        shrinkWrap: true,
                        children: menu
                            .map(
                              (tile) =>
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 8),
                                decoration: tile.id == controller.currentScreen
                                    ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFFF2F6FF),
                                    border: const Border(
                                        left: BorderSide(
                                            color: Color(0xFF1550CC),
                                            width: 3)))
                                    : null,
                                child: ListTile(
                                  title: Text(tile.title),
                                  leading: tile.icon,
                                  trailing: tile.trailing,
                                  onTap: () {
                                    controller.currentScreen = tile.id;
                                    if(!isDesktop) {
                                      Navigator.pushReplacement(
                                        context, MaterialPageRoute(
                                      builder: (context) =>
                                          controller.changeScreen(),));
                                    }
                                    controller.update();
                                  },
                                ),
                              ),
                        )
                            .toList());
                  }
              ),
            ),
            const Divider(),
            const Text('Support'),
            Expanded(
              child: GetBuilder<ScreenController>(
                  init: ScreenController(),
                  builder: (controller) {
                    return ListView(
                        shrinkWrap: true,
                        children: support
                            .map(
                              (tile) =>
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 8),
                                decoration: tile.id == controller.currentScreen
                                    ? BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFFF2F6FF),
                                    border: const Border(
                                        left: BorderSide(
                                            color: Color(0xFF1550CC),
                                            width: 3)))
                                    : null,
                                child: ListTile(
                                  title: Text(tile.title),
                                  leading: tile.icon,
                                  trailing: tile.trailing,
                                  onTap: () {
                                    if (tile.id != 9) {
                                      controller.currentScreen = tile.id;
                                      if (!isDesktop) {
                                        Navigator.pushReplacement(context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  controller.changeScreen(),));
                                      }
                                    }
                                    controller.update();
                                  },
                                ),
                              ),
                        )
                            .toList());
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
