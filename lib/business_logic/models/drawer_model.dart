import 'package:flutter/material.dart';

class DrawerModel{
  final int id;
  final String title;
  final Icon icon;
  final Widget view;
  bool isSelected;
  final Widget? trailing;

  DrawerModel({required this.id, required this.title, required this.icon, required this.view, this.isSelected = false, this.trailing});

}