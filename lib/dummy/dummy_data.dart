import 'package:dashboard/business_logic/models/total.dart';
import 'package:dashboard/presentation/view/main_screens/over_view.dart';
import 'package:flutter/material.dart';

import '../business_logic/models/drawer_model.dart';

List<Total> totals = [
  const Total(
      title: 'Total revenue',
      totalNumber: 612.839,
      percentage: 16,
      icon: Icon(Icons.monetization_on)),
  const Total(
      title: 'Total customers',
      totalNumber: 513.839,
      percentage: -0.4,
      icon: Icon(Icons.groups)),
  const Total(
      title: 'Total transactions',
      totalNumber: 637.839,
      percentage: 8,
      icon: Icon(Icons.library_books_rounded)),
  const Total(
      title: 'Total products',
      totalNumber: 256.839,
      percentage: 2,
      icon: Icon(Icons.shopping_bag_sharp)),
];

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
      title: 'help', icon: const Icon(Icons.help), view: const Placeholder()),
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