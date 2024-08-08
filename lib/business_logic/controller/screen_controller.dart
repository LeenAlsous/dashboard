import 'package:dashboard/presentation/view/main_screens/over_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/drawer_model.dart';

class ScreenController extends GetxController {
  int currentScreen = 0;

  List<DrawerModel> menu = [
    DrawerModel(
        id: 0,
        title: 'Overview',
        icon: const Icon(Icons.grid_view_rounded),
        view: const OverView(),
        isSelected: true),
    DrawerModel(
        id: 1,
        title: 'Products',
        icon: const Icon(Icons.shopping_bag),
        view: const Placeholder()),
    DrawerModel(
        id: 2,
        title: 'Customers',
        icon: const Icon(Icons.groups),
        view: const Placeholder()),
    DrawerModel(
        id: 3,
        title: 'Transactions',
        icon: const Icon(Icons.file_copy),
        view: const Placeholder()),
    DrawerModel(
        id: 4,
        title: 'Statistics',
        icon: const Icon(Icons.pie_chart),
        view: const Placeholder()),
    DrawerModel(
        id: 5,
        title: 'Campaign',
        icon: const Icon(Icons.campaign),
        view: const Placeholder(),
        trailing: Container(
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('New'),
            ))),
    DrawerModel(
        id: 6,
        title: 'Log activities',
        icon: const Icon(Icons.access_time_filled_rounded),
        view: const Placeholder()),
  ];

  List<DrawerModel> support = [
    DrawerModel(
        id: 7,
        title: 'Settings',
        icon: const Icon(Icons.settings),
        view: const Placeholder()),
    DrawerModel(
        id: 8,
        title: 'help',
        icon: const Icon(Icons.help),
        view: const Placeholder()),
    DrawerModel(
      id: 9,
        title: 'dark mode',
        icon: const Icon(Icons.sunny),
        view: const Placeholder(),
        trailing: Switch(
          onChanged: (val) {},
          value: false,
        )),
  ];

  Widget changeScreen() {
    switch (currentScreen) {
      case 0:
        return const OverView();
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
        return const Placeholder();
      default:
        return const Placeholder();
    }
  }
}
