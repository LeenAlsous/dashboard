import 'package:dashboard/dummy/dummy_data.dart';
import 'package:dashboard/presentation/widgets/side_menu.dart';
import 'package:flutter/material.dart';

class SplitView extends StatefulWidget {
  const SplitView({Key? key}) : super(key: key);

  @override
  State<SplitView> createState() => _SplitViewState();
}

class _SplitViewState extends State<SplitView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        body: Row(
          children: [
            constraints.maxWidth > 1050
                ? const SideMenu()
                : Container(),
            Expanded(
                child: menu.firstWhere((element) => element.isSelected).view),
          ],
        ),
      ),
    );
  }
}
