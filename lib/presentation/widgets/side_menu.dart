import 'package:dashboard/dummy/dummy_data.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 6,
      child: Column(
        children: [
          Image.asset(
            'assets/logo_transparent.png',
            height: MediaQuery.sizeOf(context).height * 0.1,
          ),
          const Text('Menu'),
          Expanded(
            child: Container(
              color: const Color(0xFFFFFFFF),
              child: ListView(
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
            ),
          ),
        ],
      ),
    );
  }
}
