import 'package:dashboard/dummy/dummy_data.dart';
import 'package:dashboard/helper/screen_sizes.dart';
import 'package:flutter/material.dart';

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
             if(isDesktop) Expanded(
               child: Container(
                 color: const Color(0xFFFFFFFF),
                 child: Column(
                   children: [
                     Image.asset(
                       'assets/logo_transparent.png',
                       height: MediaQuery.sizeOf(context).height * 0.1,
                     ),
                     const Text('Menu'),
                     ListView(
                         shrinkWrap: true,
                         children: menu
                             .map(
                               (tile) => ListTile(
                             title: Text(tile.title),
                             leading: tile.icon,
                             onTap: () {
                               for (var element in menu) {
                                 element.isSelected = false;
                               }
                               tile.isSelected = true;
                               setState(() {});
                             },
                           ),
                         )
                             .toList()),
                   ],
                 ),
               ),
             ),
            Expanded(
              flex: 4,
                child: menu.firstWhere((element) => element.isSelected).view),
          ],
        ),
    );
  }
}
